#install.packages("plantecophys")
library(plantecophys)
mydata <- read.csv("Users/liatadler/Desktop/AciTest1.csv")

fit <- fitaci(AciTest1)
fit
plot(fit)


