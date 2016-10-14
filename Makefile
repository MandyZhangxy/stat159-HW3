
.PHONY: data tests eda regression report clean all

data:
	cd data; curl --remote-name http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv; cd ..


all: eda regression report

session-info:
	cd code/scripts/ && Rscript session-info-script.R; cd ../..

eda: 
	cd code/scripts/ && Rscript eda-script.R; cd ../..


regression:
	cd code/scripts/ && Rscript regression-script.R; cd ../..

tests:
	cd code/ && Rscript "test-that.R"

report: report/report.rmd regression eda 
	Rscript -e 'library("rmarkdown");library("xtable"); rmarkdown::render("report/report.Rmd")'


clean: 
	rm -f report/report.pdf


