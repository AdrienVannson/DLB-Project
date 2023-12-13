#!/bin/bash

python run.py exp.name=5_way_5_shot_tm method=maml dataset=tabula_muris n_shot=5 n_way=5
python run.py exp.name=5_way_5_shot_tm method=baseline dataset=tabula_muris n_shot=5 n_way=5
python run.py exp.name=5_way_5_shot_tm method=baseline_pp dataset=tabula_muris n_shot=5 n_way=5
python run.py exp.name=5_way_5_shot_tm method=matchingnet dataset=tabula_muris n_shot=5 n_way=5
python run.py exp.name=5_way_5_shot_tm method=protonet dataset=tabula_muris n_shot=5 n_way=5


python run.py exp.name=5_way_5_shot_sp method=maml dataset=swissprot n_shot=5 n_way=5
python run.py exp.name=5_way_5_shot_sp method=baseline dataset=swissprot n_shot=5 n_way=5
python run.py exp.name=5_way_5_shot_sp method=baseline_pp dataset=swissprot n_shot=5 n_way=5
python run.py exp.name=5_way_5_shot_sp method=matchingnet dataset=swissprot n_shot=5 n_way=5
python run.py exp.name=5_way_5_shot_sp method=protonet dataset=swissprot n_shot=5 n_way=5