
.PHONY: data tests eda regression report clean all

data:
	cd data; curl --remote-name http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv; cd ..


all: eda regression report

eda: 
	cd code/scripts/ && Rscript eda-script.R; cd ../..


regression:
	cd code/scripts/ && Rscript regression-script.R; cd ../..

tests:
	cd tests/; Rscript -e "library(testthat); test_file('test-that.R')"

report: report/report.rmd 


clean: rm -f report/report.pdf
	rm -rf report/report.pdf
