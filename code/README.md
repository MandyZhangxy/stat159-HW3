In this folder, it has one `test-that.R` file and three sub-folders: `functions/`, `scripts/` and `tests/`

- `test-that.R`: calls `test-regression.R` to run the unit tests for the `regression-functions.R`.
- `functions/`: contains `regression-function.R` which is has 5 functions to obtain:
	- Residual Sum of Squares
	- Total Sum of Squares
	- R-squared
	- F-statistic
	- Residual Standard Error
-`scripts/`: this folder has three r.file:
	- `eda-scrippt.R`?reads in the `Advertising.csv` data set, and computes 
    summary statistics, histograms for all the variables (`TV`, `Radio`,
    `Newspaper`, and `Sales`), matrix of correlations among all variables,
    and scatterplot-matrix (pairwise scatterplots). 	
	- `regression-script.R`
	- `session-info-script.R`
-`tests/`:

