#!/bin/bash

python run.py exp.name=sp_ways_analysis run.name=sp_2w_5s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=2 n_shot=5
python run.py exp.name=sp_ways_analysis run.name=sp_3w_5s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=3 n_shot=5
python run.py exp.name=sp_ways_analysis run.name=sp_4w_5s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=4 n_shot=5
python run.py exp.name=sp_ways_analysis run.name=sp_5w_5s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=5 n_shot=5
python run.py exp.name=sp_ways_analysis run.name=sp_6w_5s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=6 n_shot=5
python run.py exp.name=sp_ways_analysis run.name=sp_7w_5s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=7 n_shot=5
python run.py exp.name=sp_ways_analysis run.name=sp_8w_5s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=8 n_shot=5
python run.py exp.name=sp_ways_analysis run.name=sp_9w_5s method=relationnet dataset=swissprot method.cls.layers_size=[128,32,1] method.cls.dropout=0.0 method.cls.batch_norm=1 n_way=9 n_shot=5