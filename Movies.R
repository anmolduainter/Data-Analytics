library(ggplot2movies)

# name of movies
names(movies)   

# average length
mean(movies$length)

#average budget
mean(movies$budget)

#average budget after removing NA
mean(movies$budget,na.rm=TRUE)

#frequency of missing budget
mean(is.na(movies$budget))

# return dataset after removing missing data
moviesNoNa=na.omit(movies)

# generating plot
qplot(rating,budget,data=moviesNoNa,size=1.2)+stat_smooth(color="Red",size=2,se=F)

