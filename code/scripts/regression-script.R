setwd(file.path(getwd()))
eda = read.csv("data/Advertising.csv", header = TRUE)
eda = eda[,-1]

reg_TV = lm(eda$Sales~eda$TV)
reg_Radio = lm(eda$Sales~eda$Radio)
reg_Newspaper = lm(eda$Sales~eda$Newspaper)
reg_multi = lm(Sales~TV + Radio + Newspaper, data = eda)

save(reg_TV,reg_Radio, reg_Newspaper, reg_multi, file = "data/regression.RData")
