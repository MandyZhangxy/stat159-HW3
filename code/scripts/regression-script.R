setwd(file.path(getwd()))
eda = read.csv("data/Advertising.csv", header = TRUE)
eda = eda[,-1]

reg_TV = lm(eda$Sales~eda$TV)
reg_Radio = lm(eda$Sales~eda$Radio)
reg_Newspaper = lm(eda$Sales~eda$Newspaper)
reg_multi = lm(Sales~TV + Radio + Newspaper, data = eda)

save(reg_TV,reg_Radio, reg_Newspaper, reg_multi, file = "data/regression.RData")

png(file = "images/scatterplot-tv-sales.png",width=8,height=6,units="in",res=100)

plot(eda$TV, eda$Sales, pch = 20, col = "deeppink3", ylab = "Sales", xlab = "TV", cex = 1.2, main = "Linear Regression Sales on TV")
apply(cbind(eda$TV,eda$TV,eda$Sales, fitted(lm(eda$Sales~eda$TV))), 1, function(coords){
  lines(coords[1:2], coords[3:4], col = "darkgrey")})
abline(lm(eda$Sales~eda$TV), col = "dark blue", lwd = 2)

dev.off()

png(file = "images/scatterplot-radio-sales.png",width=8,height=6,units="in",res=100)

plot(eda$Radio, eda$Sales, pch = 20, col = "deeppink3", ylab = "Sales", xlab = "Radio", cex = 1.2, main = "Linear Regression Sales on Radio")
apply(cbind(eda$Radio,eda$Radio,eda$Sales, fitted(lm(eda$Sales~eda$Radio))), 1, function(coords){
  lines(coords[1:2], coords[3:4], col = "darkgrey")})
abline(lm(eda$Sales~eda$Radio), col = "dark blue", lwd = 2)

dev.off()


png(file = "images/scatterplot-newspaper-sales.png",width=8,height=6,units="in",res=100)

plot(eda$Newspaper, eda$Sales, pch = 20, col = "deeppink3", ylab = "Sales", xlab = "Newspaper", cex = 1.2, main = "Linear Regression Sales on Newspaper")
apply(cbind(eda$Newspaper,eda$Newspaper,eda$Sales, fitted(lm(eda$Sales~eda$Newspaper))), 1, function(coords){
  lines(coords[1:2], coords[3:4], col = "darkgrey")})
abline(lm(eda$Sales~eda$Newspaper), col = "dark blue", lwd = 2)

dev.off()


png(file = "images/residual-plot.png")
plot(reg_multi, which = 1)
dev.off()


png(file = "images/normal-qq-plot.png")
plot(reg_multi, which = 2)
dev.off()


png(file = "images/scale-location-plot.png")
plot(reg_multi, which = 3)
dev.off()

head(mtcars)

rcorr(as.matrix(mtcars), type = "pearson")

install.packages("Hmisc")



