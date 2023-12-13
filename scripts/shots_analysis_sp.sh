#!/bin/bash

python run.py exp.name=sp_shots_analysis run.name=sp_5w_1s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=1
python run.py exp.name=sp_shots_analysis run.name=sp_5w_2s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=2
python run.py exp.name=sp_shots_analysis run.name=sp_5w_3s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=3
python run.py exp.name=sp_shots_analysis run.name=sp_5w_4s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=4
python run.py exp.name=sp_shots_analysis run.name=sp_5w_5s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=5
python run.py exp.name=sp_shots_analysis run.name=sp_5w_6s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=6
python run.py exp.name=sp_shots_analysis run.name=sp_5w_7s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=7
python run.py exp.name=sp_shots_analysis run.name=sp_5w_8s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=8
python run.py exp.name=sp_shots_analysis run.name=sp_5w_9s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=9
python run.py exp.name=sp_shots_analysis run.name=sp_5w_10s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=10