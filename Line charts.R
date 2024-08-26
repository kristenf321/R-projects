#In this project, I used the data set of the closing stock prices taken from a lesson on plural
#sight learning platform to learn how to use base R to create a line graph.The lesson specifically
#focused on using the IBM column in the stocks data frame, removing the dollar signs found in the csv file
#and finally creating our line graph to analyze the relationship between the closing IBM stock prices


#creating the table stocks from our csv file
#setting the first row of data in csv as our headers, and separate values by commas
stocks<-read.table("Closing_Stock_Prices.csv", header=TRUE, sep=",") 


#for IBM column in stocks data frame, there are dollar signs in the csv file, so we want to remove those
#use a function called gsub to remove the dollar sign after the backslashes
#"" means that the dollar signs are removed as this is the replcamenet string to denote an empty string
stocks$IBM=as.numeric(gsub("\\$", "", stocks$IBM)) #removes dollar signs from strings in IBM column

#1st argument: variable from stocks data frame for x axis
#2nd argument: variable from stocks data frame for y axis
#3rd argument: type o means our points will be open circles in the line chart
#4th argument: label for x axis
#5th argument: label for y axxis
plot(stocks$Sept_2016, stocks$IBM, type="o",
     xlab="Sept 2016",
     ylab="IBM Closing Prices"
     )

