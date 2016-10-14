#STAT 159 - fall-2016 Homework 3

This repository holds the third assignment for the fall 2016 Statistics 159 at UC Berkeley.

This assignment is about applying the computational toolkit (plus R) to reproduce regression analysis. More specifically, the idea is to reproduce the analysis from Section 3.2 (page 71 to 82), of Chapter 3:*Linear Regression*, from the book "An introduction to Statistical Learning" (by James et at) at http://www-bcf.usc.edu/~gareth/ISL/.

The purpose of this assignment is to extend the scope of the previous HW2. In addition to keep applying regression analysis in R -- using `lm()`-- I will also write some functions as well as their unit tests. 

In this repository 
```
stat159-fall2016-hw03/
	.gitignore
	README.md
	LICENSE
	Makefile
	session-info.txt                     # produced by session-info-script.R
	code/
	  README.md
	  test-that.R
	  functions/
	    regression-functions.R
	  scripts/
	    eda-script.R
	    regression-script.R
	    session-info-script.R
	  tests/
	    test-regression.R
	data/
	  README.md
	  Advertising.csv
	  eda-output.txt                      # produced by eda-script.R
	  correlation-matrix.RData            # produced by eda-script.R
	  regression.RData                    # produced by regression-script.R
	images/
		histogram-sales.png                # produced by eda-script.R
		histogram-tv.png                   # produced by eda-script.R
		histogram-radio.png                # produced by eda-script.R
		histogram-newspaper.png            # produced by eda-script.R
		scatterplot-matrix.png             # produced by eda-script.R
		scatterplot-tv-sales.png           # produced by regression-script.R
		scatterplot-radio-sales.png        # produced by regression-script.R
		scatterplot-newspaper-sales.png    # produced by regression-script.R
		residual-plot.png                  # produced by regression-script.R
		scale-location-plot.png            # produced by regression-script.R
		normal-qq-plot.png                 # produced by regression-script.R
	report/
		report.Rmd
		report.pdf
```

###For a "competent" user: if you want to recreate my analysis and report, you can:
1. git clone the repository or download it.
2. In your terminal,`cd` into directory
3. run the Makefile by common `make all` and then it will execute all scripts and get all output such as `report.pdf`.


Author: Xinyu Zhang

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>. 

All source code (i.e. code in R script files) is licensed under GNU General Public License, version 3. See the LICENSE file for more information




