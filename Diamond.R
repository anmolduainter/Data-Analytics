library(ggplot2)
print(diamonds[1:10,1:8])
diamondSubset=diamonds[sample(dim(diamonds)[1],1000),]

# This Histogram shows as the price of diamond increases 
qplot(price,data=diamondSubset)

# This Histogram shows BiModal relationship that was not visible on original scale
qplot(log(price),size=I(1),data=diamondSubset)
