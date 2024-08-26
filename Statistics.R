#In this script, I used the mtcars data set already built into R and applied various statistics
#functions to better understand the data. The building blocks of this exercise was to print 
#specific variables only and understand how to access column and row names to isolate the data of 
#interest in a large data set. Another important part of this project was to understand how to find 
#important information about the contents of certain columns in the data like the min, max, 
#median, mean, percentiles, and mode all commonly used in the analysis of data sets involving the 
#numerical type.  

#DATA SETS
#print the mtcars data set
mtcars

?mtcars #prints information about the mtcars data set

#get more info about the data set
Data_Cars<- mtcars #create a variable to better organize the data
dim(Data_Cars) #gives number of rows and columns
names(Data_Cars) #gives column names which is the names of the variables for the data set
rownames(Data_Cars) #gives the name of each row in the first column 

#if want to print all values that belong to a variable use the $ symbol
Data_Cars$vs
#sort variable names
sort(Data_Cars$vs) #sort in increasing order is the default
sort(Data_Cars$vs, dec=TRUE) #can also sort in decreasing order

#ANALYZING THE DATA
summary(Data_Cars)
#The summary() function returns six statistical numbers for each variable:
#Min, First quantile (percentile), Median, Mean, Third quantile (percentile), Max

#can also manually check the statistical numbers for certain variables 
max(Data_Cars$disp)
min(Data_Cars$disp)

#we can use the which.max() and which.min() functions to find the index position of the max and min value in the table:
which.max(Data_Cars$disp)
which.min(Data_Cars$disp)

#Or even better, combine which.max() and which.min() with the rownames() function to get the name of the car with the largest and smallest displacement:
rownames(Data_Cars)[which.max(Data_Cars$disp)]
rownames(Data_Cars)[which.min(Data_Cars$disp)]

#CALCULATING MEAN, MEDIAN, AND MODE

#MEAN
#calculating mean value for a particular variable using the mean() function
#Lets do this for average weight of a car
mean(Data_Cars$wt)

#MEDIAN
#The median value is the value in the middle, after you have sorted all the values.
#luckily the median() function does all that for us
median(Data_Cars$wt)

#MODE
#The mode value is the value that appears the most number of times.

#R does not have a function to calculate the mode.
#However, we can create our own function to find it
table(Data_Cars$wt)

names(sort(-table(Data_Cars$wt)))[1]



#PERCENTILES
#What is the 75 percentile of the weight of the cars? The answer is 3.61 or 3 610 lbs, meaning that 75% or the cars weight 3.610 lbs or less:
#c() specifies which percentile you want
quantile(Data_Cars$wt, c(0.75))


#If you run the quantile() function without specifying the c() parameter, you will get the percentiles of 0, 25, 50, 75 and 100
quantile(Data_Cars$wt) 
