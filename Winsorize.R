library(robustHD)

originaldata=c(1000,rnorm(10))

print(originaldata[1:5])

print(winsorize(originaldata[1:5]))