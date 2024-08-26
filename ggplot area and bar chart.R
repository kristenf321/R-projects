#Area plots and bar plots are another excellent way to visualize data. For this project, I used 
#the diamonds data set built into ggplot2 to create 2 area graphs and 2 bar plots. 
#The first area graph I wanted to create was to help me analyze how the price and cut of diamonds 
#correlate, and the count for each price point.For this plot, I used the argument fill in aes() to 
#fill the area under the curve with the variable cut which arranges the different cuts by colours 
#with the legend on the side of the graph. The second area graph I created was simpler,and I just
#wanted to analyze the count of each of the prices for the diamonds, without the added analysis
#of diamond cut. 
#I decided to create a bar plot to analyze the count of the different diamond cuts, as there are
#5 distinct categories of cut: fair, good, very good, premium, and ideal, which can be binned 
#along the x axis as 5 different bars. The 2 bar plots I created analyze the same thing, but
#I played around with the look of using the 'fill' argument to create a different colour for 
#each bin, or one colour for all bins. 


#lets first make an area plot for the diamonds data set built into ggplot2 

#take a quick look at the data to decide which variable want to analyze further 
diamonds 

ggplot(diamonds, aes(x = price, fill = cut)) +
  geom_area(stat = "bin") + ggtitle("Price and cut of diamonds")
#fill=cut means to fill the areas under the curve with the variable cut and arrange by colours
#to colour coordinate the different cuts into a legend on the side of the graph 

#The stat = "bin" argument indicates that the data should be binned (grouped into intervals) along 
#the x-axis, and the area plot will represent the count (or frequency) of diamonds within each price bin.

#geom_area by default makes the height of the graph (the y axis)represent the count of each
#variable in the bin

ggplot(diamonds, aes(x=price)) + geom_area(stat="bin")
#by default count of each price is on y axis, because the stat=bin argument indicates the data should be grouped into intervals along x axis with count on y


#LETS MAKE A BAR PLOT OF CUT

ggplot(diamonds, aes(x=cut, fill=cut)) + geom_bar()
#fill=cut colour cooridinates the different bars 

#or if just want one solid colour for all bar
ggplot(diamonds, aes(x=cut))+ geom_bar(fill="lightblue")

#or if  want one solid colour for all bars with an outline 
#colour specifies outline, fill specifies bar colour 
ggplot(diamonds, aes(x=cut))+geom_bar(fill="grey", colour="magenta")


g
