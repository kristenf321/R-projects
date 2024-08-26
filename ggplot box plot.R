#This R script provides the code to create informative and clean box plots using the ToothGrow
#data set that is found in ggplot2. We are trying to find the distribution of length of teeth
#by setting up a box plot that is easy to understand with elements such as labels, a median 
#line, title, and the option to visualize the data in another way by rotating the box plot

#make sure ggplot 2 is installed 
install.packages("ggplot2")
library(ggplot2)

#basic box plot
#use ToothGrowth data set that is built into ggplot2
#aes is aesthetic mapping which assigns things like  colour and label axes
#so x="" and y=len means we are keeping the x axis left blank and y axis is labelled len for length
p<- ggplot(ToothGrowth, aes(x="", y=len))+ geom_boxplot(fill="slateblue", notch= "TRUE")
p
#CODE BREAKDOWN
p<- ggplot(ToothGrowth, aes(x="", y=len)) #creates just the outline so the labelled axis and grid
p<- ggplot(ToothGrowth, aes(x="", y=len))+ geom_boxplot(fill="slateblue", notch= "TRUE")
#+ sign adds layers to combine geom_boxplot to the base plot(grid)
#Geometric Layers (geom_*): These are the visual representations of data, such as points, lines, bars, or box plots. Each geom_* function adds a different type of plot to your base.
#notch is median line
#fill box with colour slate blue
#can see the distribution is pretty even and that the average is 20 units of measurment 

#rotate the box plot
p + coord_flip() + theme_classic() +ggtitle("Tooth Growth Data")
# the '+' sign indicates that the layers coord_flip function and getting rid of background (grid lines) is added to the plot p
#theme_classic() gets rid of any sort of background
#ggtitle adds main title





