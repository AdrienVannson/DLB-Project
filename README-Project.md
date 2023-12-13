# CS-502: Final project

## Code organization

Besides the files originally present in the project architecture, we added the following folders:
 - `scripts` contains the scripts that we created to execute our benchmarks
 - `analysis` contains the programs and the data that we used to perform our analysis of the accuracy

## Running the code

The code can be executed using the command `python run.py exp.name=XXX run.name=XXX method=relationnet dataset=XXX method.cls.layers_size=XXX method.cls.dropout=XXX method.cls.batch_norm=0 n_way=5 n_shot=1`, where:
 - `method.cls.layers_size` is the output size of the linear layers, for example `[128, 32, 1]`
 - `method.cls.dropout` is the dropout rate to use in the prediction part of the network
 - `method.cls.batch_norm` is a boolean (0 or 1) indicating whether batch normalization should be used
To run the code without errors, it may be necessary to change line 17 of `relationnet.py` to use the correct number of input features as we don't read this value from the configuration.

No other dependencies than the ones originaly required are needed.