
.PHONY: data tests eda regression report clean all

data:
	cd data; curl --remote-name http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv; cd ..

all: eda regression report

eda: code/scripts/eda-script.R data/
	cd code/scripts/ && Rscript eda-script.R;


regression: code/scripts/regression-script.R data/
	cd code/scripts/ && Rscript regression-script.R; cd ../..

tests: test-that.R

report: report/report.rmd 


clean: 
	rm -rf report/report.pdf
