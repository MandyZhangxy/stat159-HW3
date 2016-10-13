
.PHONY: data tests eda regression report clean all session-info

data:
	cd data; curl --remote-name http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv; cd ..


all: data eda regression report session-info

session-info:
	cd code/scripts/ && Rscript session-info-script.R; cd ../..

eda: 
	cd code/scripts/ && Rscript eda-script.R; cd ../..


regression:
	cd code/scripts/ && Rscript regression-script.R; cd ../..

tests:
	cd code/ && Rscript "test-that.R"

function: 	
	cd code/functions/ && Rscript "regression-functions.R"; cd ../..

report: report/report.rmd regression eda function
	Rscript -e 'library("rmarkdown");library("xtable"); rmarkdown::render("report/report.Rmd")'


clean: rm -f report/report.pdf
	rm -rf report/report.pdf
