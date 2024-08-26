#In this project, I used the USPersonalExpenditure data set already found in ggplot2 to create an
#informative line chart. This data set contains the amount of money spent on certain categories of 
#products over the years from 1940 to 1960. This kind of relationship can be represented well in
#a line chart as there is an increasing trend of prices due to the inflation over the years 
#Because this data set has year as column variables and the categories as rownames, it is
#necessary to transpose the data so year is on the x axis in our plot as this makes the most 
#sense to see the trend in prices over time. When we transpose the data frame I also made sure
#to create a new column year so we have the row names to be the year after transposing so we can
#call year when creating our plot directly from the data frame 


#use dataset stored already in R
USPersonalExpenditure #data set outlining how much money is being spent on certain products 

#upload data set into a dataframe called us
us<- as.data.frame(USPersonalExpenditure)

#lets transpose it because we want year in x axis
us2<-as.data.frame(t(us))
us2

#we want row names to be the year after transposing so lets use rownames function
us2$year<-rownames(us2) 
us2
#the years are already the name of the rows, so this takes the rownames from dataframe us2 and 
#creates a new column/variable called year to store those rownames (the years) in 
us2$`Medical and Health`


#Now lets create the line graph 
ggplot(data=us2, aes(x=year,y= `Food and Tobacco`, group=1))+ 
              geom_line(color="lightblue")+
               geom_point(color= "dark blue") + theme_light()

#want to take Food and Tobacco into y axis thats why it is in the backticks `
#group=1 tells R to make line graph not just plot points
#NEED  TO USE BACKTICKS TO PUT UNCONVENTIAL NAMES INTO A STRING 

