#!/bin/bash

# Two linear layers
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-128-1_dropout-00 method=relationnet dataset=tabula_muris method.cls.layers_size=[128,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-128-1_dropout-20 method=relationnet dataset=tabula_muris method.cls.layers_size=[128,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-128-1_dropout-50 method=relationnet dataset=tabula_muris method.cls.layers_size=[128,1] method.cls.dropout=0.5 method.cls.batch_norm=1 n_way=5 n_shot=1

python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-64-1_dropout-00 method=relationnet dataset=tabula_muris method.cls.layers_size=[64,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-64-1_dropout-20 method=relationnet dataset=tabula_muris method.cls.layers_size=[64,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-64-1_dropout-50 method=relationnet dataset=tabula_muris method.cls.layers_size=[64,1] method.cls.dropout=0.5 method.cls.batch_norm=1 n_way=5 n_shot=1

python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-32-1_dropout-00 method=relationnet dataset=tabula_muris method.cls.layers_size=[32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-32-1_dropout-10 method=relationnet dataset=tabula_muris method.cls.layers_size=[32,1] method.cls.dropout=0.1 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-32-1_dropout-20 method=relationnet dataset=tabula_muris method.cls.layers_size=[32,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1

# Three linear layers
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-128-64-1_dropout-00 method=relationnet dataset=tabula_muris method.cls.layers_size=[128,64,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-128-64-1_dropout-20 method=relationnet dataset=tabula_muris method.cls.layers_size=[128,64,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-128-64-1_dropout-50 method=relationnet dataset=tabula_muris method.cls.layers_size=[128,64,1] method.cls.dropout=0.5 method.cls.batch_norm=1 n_way=5 n_shot=1

python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-64-32-1_dropout-00 method=relationnet dataset=tabula_muris method.cls.layers_size=[64,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-64-32-1_dropout-20 method=relationnet dataset=tabula_muris method.cls.layers_size=[64,32,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-64-32-1_dropout-50 method=relationnet dataset=tabula_muris method.cls.layers_size=[64,32,1] method.cls.dropout=0.5 method.cls.batch_norm=1 n_way=5 n_shot=1

python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-32-16-1_dropout-00 method=relationnet dataset=tabula_muris method.cls.layers_size=[32,16,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-32-16-1_dropout-20 method=relationnet dataset=tabula_muris method.cls.layers_size=[32,16,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_tm_5w_1s_mse_batchnorm run.name=layers-32-16-1_dropout-50 method=relationnet dataset=tabula_muris method.cls.layers_size=[32,16,1] method.cls.dropout=0.5 method.cls.batch_norm=1 n_way=5 n_shot=1