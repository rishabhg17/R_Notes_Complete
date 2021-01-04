
#write the following line of code

mydata<- read.csv(file.choose())

#run the above code and then choose the desired file for the data 

install.packages("ggplot2")

ggplot(data=mydata, aes(x=carat,y=price, colour=clarity))+ geom_point(alpha=0.1) + geom_smooth()

