#In this project, I used the data set of the closing stock prices taken from a lesson on plural
#sight learning platform to learn how to use base R to create a histogram. This lesson specifically
#focused on using the column in the data set DJ industrial index to analyze the distribution of 
#the index of closing prices and the frequency of each. 

#set + check working directory 
getwd()
setwd('C:/Users/krist/OneDrive')

#upload stocks data frame
stocks<-read.table("Closing_Stock_Prices.csv", header=TRUE, sep=",")

#Use histgram function to create a histogram 
hist(stocks$DJ_Industrials_Index,
     main="Distribution of Index",
       xlab= "Closing Prices",
     border="black",
     col="light pink", 
     prob=FALSE) #prob=FALSE means automatically put the frequency (number of instances for each closing price) on the y axis
                 #prob=TRUE would mean to put the probability/density on y axis
     
     