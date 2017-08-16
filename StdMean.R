# R code to remove data 5 std less than mean and 5 std greater than mean 
#    where std and mean are computed without extreme measurements

# this will generate 20 random values from normal distribution
originaldata=rnorm(20)

#lets set first to 1000
originaldata[1]=1000

#return sorted data
sorted_data=sort(originaldata)

# returns filtering_data after removing first two and last two from original data
filtered_data=originaldata[3:18]

# computing lower_limit acc. to problem
lower_limit=mean(filtered_data)-5*sd(filtered_data)

# computing higher limit acc. to problem
upper_limit=mean(filtered_data)+5*sd(filtered_data)

# returns set of all not_outlr_in 
not_outlr_in=(lower_limit<originaldata) & (originaldata<upper_limit)

print(not_outlr_in)

data_w_no_outliers=originaldata[not_outlr_in]

