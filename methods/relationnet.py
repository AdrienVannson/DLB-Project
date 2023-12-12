import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.autograd import Variable

from methods.meta_template import MetaTemplate


class RelationNet(MetaTemplate):
    def __init__(self, backbone, n_way, n_support, layers_size, batch_norm, dropout):
        super(RelationNet, self).__init__(backbone, n_way, n_support)
        #self.loss_fn = nn.CrossEntropyLoss()
        self.loss_fn = nn.MSELoss()

        layers = []
        prev = 1024

        for i, s in enumerate(layers_size):
            layers.append(nn.Linear(prev, s).to(self.device))

            if i != len(layers_size) - 1:
                if batch_norm:
                    layers.append(nn.BatchNorm1d(s))
                layers.append(nn.ReLU())
                layers.append(nn.Dropout(p=dropout))
            prev = s

        self.layers = nn.Sequential(*layers, nn.Sigmoid())

        #self.layers = nn.Sequential(*layers)

    def set_forward(self, x, is_feature=False):
        z_support, z_query = self.parse_feature(x, is_feature)

        z_support = z_support.contiguous()
        z_proto = z_support.view(self.n_way, self.n_support, -1).mean(1)  # the shape of z is [n_data, n_dim]
        z_query = z_query.contiguous().view(self.n_way * self.n_query, -1)

        concatenated = concatenate(z_query, z_proto)

        shape = concatenated.shape
        return self.layers(concatenated.view(shape[0] * shape[1], shape[2])).squeeze(dim=1).view(shape[0], shape[1])


    def set_forward_loss(self, x):
        y_query = torch.from_numpy(np.repeat(range( self.n_way ), self.n_query ))
        y_query = Variable(y_query.cuda())

        scores = self.set_forward(x)

        #return self.loss_fn(scores, y_query)

        target = F.one_hot(y_query, num_classes=self.n_way).to(self.device).float()
        return self.loss_fn(scores, target.to(self.device))

def concatenate(x, y):
    # x: N x D
    # y: M x D
    n = x.size(0)
    m = y.size(0)
    d = x.size(1)
    assert d == y.size(1)

    x = x.unsqueeze(1).expand(n, m, d)
    y = y.unsqueeze(0).expand(n, m, d)

    return torch.cat((x, y), 2)
