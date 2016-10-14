In this folder, it has one `test-that.R` file and three sub-folders: `functions/`, `scripts/` and `tests/`

- `test-that.R`: calls `test-regression.R` to run the unit tests for the `regression-functions.R`.
- `functions/`: contains `regression-function.R` which is has 5 functions to obtain:
	- Residual Sum of Squares
	- Total Sum of Squares
	- R-squared
	- F-statistic
	- Residual Standard Error

	
-`scripts/`: this folder has three r.files:
	+ `eda-scrippt.R`:reads in the `Advertising.csv` data set, and computes summary statistics, histograms for all the variables (`TV`, `Radio`, `Newspaper`, and `Sales`), matrix of correlations among all variables, and scatterplot-matrix (pairwise scatterplots). 	
	+ `regression-script.R`: `regression-script.R` reads in the `Advertising.csv` data set, and computes a `"regression"` object---via `lm()`---as well as the summary of such regression object---via `summary()`. These objects are saved in the file `regression.RData`. This script also produces the three diagnostics plots `residual-plot.png`, `scale-location-plot.png`, and `normal-qq-plot.png`.  
	+ `session-info-script.R`?`session-info-script.R` is a script that includes `library()` calls to ALL the packages that you use for your project, as well as the output of the function `sessionInfo()`. Export the output via `sink()` to the file `session-info.txt`
	
-`tests/`: this folder has a `test-regression.R` file which is for testing purposes, using the data `mtcars` (that comes in R), and computing a multiple regression of `mpg` on `disp` and `hp`. 

