#This project was based on a lesson on regression in the plural sight learning platform 
#with my own modifications added to it. The goal of this project is to understand how given 
#numerical vectors, we can create a scatter plot in base R and use regression to find the 
#relatedness between the 2 data sets, which is a common tool used in data analysis


#create a scatterplot, find the regression function of the scatter plot, plot the line

#create two vectors for x and y 
x<- c(7.8, 5.6,6.2,6.3,6.9,7.4,7.8,8.0,8.5)
y<- c(5.2,5.4,3.6,4.2,4.9, 5.8,6.2,7.0,7.5)

#now plot our x and y 
#creating a linear function which tells R to create a scatterplot 
#that is what the y and little symbol x means
plot(y~x,
     pch=18, #controls the shape/symbol of our dots
     cex=2, #controls the size of our dots
     col="mediumpurple1", #colour code found online for R
     xlab="A", ylab="B",
     main="Correlation A and B"
)

#find the A B regression line 
abline(lm(y~x), col="royalblue4")  #regression line (y~x)
#add R squared value as a label to the graph,, but first need to run linear model to find out what the R squared value is before we can run the next line of code
r<- lm(y~x) #linear model of y and x
summary(r) #gives us a summar in the console of our adjusted R squared value

#now to add R squared value as label to graph can run this next code by inputting the adjusted R squared value
#text(x= y= lets us specify the coordinate we want the lab to be)
text(x=6.2, y=6.8, labels="R2= 0.53")
