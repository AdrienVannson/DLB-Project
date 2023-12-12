#!/bin/bash

# Two linear layers
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-8-1_dropout-00 method=relationnet dataset=swissprot method.cls.layers_size=[8,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-8-1_dropout-20 method=relationnet dataset=swissprot method.cls.layers_size=[8,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-8-1_dropout-50 method=relationnet dataset=swissprot method.cls.layers_size=[8,1] method.cls.dropout=0.5 method.cls.batch_norm=1 n_way=5 n_shot=1

python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-32-1_dropout-00 method=relationnet dataset=swissprot method.cls.layers_size=[32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-32-1_dropout-20 method=relationnet dataset=swissprot method.cls.layers_size=[32,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-32-1_dropout-50 method=relationnet dataset=swissprot method.cls.layers_size=[32,1] method.cls.dropout=0.5 method.cls.batch_norm=1 n_way=5 n_shot=1

python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-128-1_dropout-00 method=relationnet dataset=swissprot method.cls.layers_size=[128,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-128-1_dropout-20 method=relationnet dataset=swissprot method.cls.layers_size=[128,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-128-1_dropout-50 method=relationnet dataset=swissprot method.cls.layers_size=[128,1] method.cls.dropout=0.5 method.cls.batch_norm=1 n_way=5 n_shot=1

python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-512-1_dropout-00 method=relationnet dataset=swissprot method.cls.layers_size=[512,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-512-1_dropout-20 method=relationnet dataset=swissprot method.cls.layers_size=[512,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-512-1_dropout-50 method=relationnet dataset=swissprot method.cls.layers_size=[512,1] method.cls.dropout=0.5 method.cls.batch_norm=1 n_way=5 n_shot=1

# Three linear layers
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-128-32-1_dropout-00 method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-128-32-1_dropout-20 method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-128-32-1_dropout-50 method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.5 method.cls.batch_norm=1 n_way=5 n_shot=1

python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-256-64-1_dropout-00 method=relationnet dataset=swissprot method.cls.layers_size=[256,64,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-256-64-1_dropout-20 method=relationnet dataset=swissprot method.cls.layers_size=[256,64,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-256-64-1_dropout-50 method=relationnet dataset=swissprot method.cls.layers_size=[256,64,1] method.cls.dropout=0.5 method.cls.batch_norm=1 n_way=5 n_shot=1

python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-512-128-1_dropout-00 method=relationnet dataset=swissprot method.cls.layers_size=[512,128,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-512-128-1_dropout-20 method=relationnet dataset=swissprot method.cls.layers_size=[512,128,1] method.cls.dropout=0.2 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=relationnet_sp_5w_1s_mse_batchnorm run.name=layers-512-128-1_dropout-50 method=relationnet dataset=swissprot method.cls.layers_size=[512,128,1] method.cls.dropout=0.5 method.cls.batch_norm=1 n_way=5 n_shot=1