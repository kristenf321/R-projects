#In this short project, I used a csv file found online that contains giant tiger prawn data 
#with growth rate and diet of these tigers. I created visualization of the data in three forms of
#plots: scatter, box, and line to help me figure out the best way to display the data.
#Since the data for diet of these tigers is categorized as either artificial or natural,
#I concluded a box plot was the best way to visualize this data as we can see the median, min, max
#and outliers for the growth rate for a tiger with an artificial diet vss natural diet

#check working directory and use setwd() if necessary 
getwd()

#SCATTER PLOT
#upload csv file containing data on giant tiger prawn 
Giant_Tiger_Prawn<- read.csv("prawnGR.csv")
ggplot(Giant_Tiger_Prawn, aes(x = diet , y = GRate)) + 
  geom_point(color="blue",size=2) + ggtitle("Growth rate and diet of Giant Tiger Prawns")



#BOXPLOT
ggplot(Giant_Tiger_Prawn, aes(x = diet, y=GRate)) + geom_boxplot(fill="pink", notch="TRUE") +
  ggtitle("Growth rate and diet of Giant Tiger Prawns")

#LINE GRAPH
Giant_Tiger_Prawn<- read.csv("prawnGR.csv")
ggplot(Giant_Tiger_Prawn, aes(x = diet , y = GRate)) + 
  geom_point(color="blue",size=2) + ggtitle("Growth rate and diet of Giant Tiger Prawns") +
  geom_line(color="purple")


