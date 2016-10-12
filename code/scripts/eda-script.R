setwd(file.path(getwd()))
eda = read.csv("data/Advertising.csv", header = TRUE)
eda = eda[,-1]

png(file = "images/histogram-tv.png")
hist(eda$TV, main = "Histogram of TV")
dev.off()

png(file = "images/histogram-sales.png")
hist(eda$Sales, main = "Histogram of Sales")
dev.off()

png(file = "images/histogram-radio.png")
hist(eda$Radio, main = "Histogram of Radio")
dev.off()

png(file = "images/histogram-newpaper.png")
hist(eda$Newspaper, main = "Histogram of Newspaper")
dev.off()

png(file = "images/scatterplot-matrix.png")
pairs(eda)
dev.off()

sink(file = "data/eda-output.txt")
cat("TV summary statistics\n\n")
summary(eda$TV)
cat("Radio summary statistics\n\n")
summary(eda$Radio)
cat("Newspaper summary statistics\n\n")
summary(eda$Newspaper)
cat("Sales summary statistics\n\n")
summary(eda$Sales)
car("matrix of correltations among all variables")
round(cor(eda),3)
sink()

corme_da = cor(eda)
save(corm_eda, file = "../data/correlation-matrix.RData")


