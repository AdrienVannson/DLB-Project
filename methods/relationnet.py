import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.autograd import Variable

from methods.meta_template import MetaTemplate


class RelationNet(MetaTemplate):
    def __init__(self, backbone, n_way, n_support):
        super(RelationNet, self).__init__(backbone, n_way, n_support)
        self.loss_fn = nn.CrossEntropyLoss()

        self.linear1 = nn.Linear(1024, 16, device=self.device).to(self.device)
        self.linear2 = nn.Linear(16, 1, device=self.device).to(self.device)
        self.relu = nn.ReLU()
        self.dropout = nn.Dropout(p=0.2)

    def set_forward(self, x, is_feature=False):
        z_support, z_query = self.parse_feature(x, is_feature)

        z_support = z_support.contiguous()
        z_proto = z_support.view(self.n_way, self.n_support, -1).mean(1)  # the shape of z is [n_data, n_dim]
        z_query = z_query.contiguous().view(self.n_way * self.n_query, -1)

        concatenated = concatenate(z_query, z_proto)

        v = self.linear1(concatenated)
        v = self.relu(v)
        v = self.dropout(v)
        v = self.linear2(v)
        v = v.squeeze(dim=2)

        return v


    def set_forward_loss(self, x):
        y_query = torch.from_numpy(np.repeat(range( self.n_way ), self.n_query ))
        y_query = Variable(y_query.cuda())

        scores = self.set_forward(x)

        return self.loss_fn(scores, y_query)


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
