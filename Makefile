.PHONY: data tests eda regression report clean all
data:
	cd data; curl --remote-name http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv; cd ..

all: eda regression report

eda:

regression:



report:


clean: 
	rm -rf report/report.pdf
