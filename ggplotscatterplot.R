#A short, simple, yet informative R script to create a scatter plot in ggplot of the mtcars data set 
#already built into R. mtcars is a large data set outlining information about miles per gallon, 
#weight, etc. but in this script we are just looking to create a scatter plot of weight vs. miles per gallon
#to visualize how the weight of the car relates to the miles per gallon when studied from a large
#data set from a various number of cars

mtcars
#use dataset mtcars built into R
#x axis is weight and y is the miles per gallon
#geom point adds another layer to graph which is the point
ggplot(mtcars, aes(x=wt, y=mpg))+geom_point()

#change the point size and shape + add a title
ggplot(mtcars, aes(x=wt, y=mpg))+geom_point(size=2, shape=18) + ggtitle("Characteristics of weight and miles per gallon used for different cars")
#can go up to size 4, lets play around with shap 18 which is a filled in diamond


