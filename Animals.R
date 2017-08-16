library(MASS)

# print 12 Animals with their corresponding Coloumns...........
print(Animals[1:12,])


# Not Very Informative
qplot(brain,body,data=Animals)


# Very Informative After converting to Log Log Scale
qplot(brain,body,log = "xy" , data=Animals)