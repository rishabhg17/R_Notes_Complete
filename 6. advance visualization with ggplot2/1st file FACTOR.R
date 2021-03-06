


movies<- read.csv(file.choose())
head(movies)

#original file has $ and other symnbols which cannot be used hence . is shown

colnames(movies)<- c("Film","Genre","CriticRating","AudienceRating","BudegtMillions","Year")
head(movies)

str(movies)
summary(movies)



factor(movies$Year)
movies$Year<- factor(movies$Year)

summary(movies)
str(movies)

movies$Film<- factor(movies$Film)
movies$Genre<- factor(movies$Genre)
str(movies)



#------Aesthetics
library(ggplot2)

ggplot(data=movies, aes(x=CriticRating,y=AudienceRating))


#add geometry

ggplot(data=movies, aes(x=CriticRating,y=AudienceRating)) + geom_point()

#add  colour

ggplot(data=movies, aes(x=CriticRating,y=AudienceRating, colour=Genre)) + geom_point()

#add size

ggplot(data=movies, aes(x=CriticRating,y=AudienceRating, colour=Genre,size=BudegtMillions)) + geom_point()



#plotting with layers

p<-ggplot(data=movies, aes(x=CriticRating,y=AudienceRating, colour=Genre,size=BudegtMillions))
p

#point
p+geom_point()

#lines
p+ geom_line()


#multiple layers
p+geom_point()+geom_line()
p+geom_line()+geom_point()



#overriding aesthetics

q<-ggplot(data=movies, aes(x=CriticRating,y=AudienceRating, colour=Genre,size=BudegtMillions))


#add geom layer
q+ geom_point()

#over riding aes
#example 1
q+ geom_point(aes(size=CriticRating))

#ex2
q+ geom_point(aes(colour=BudegtMillions))

#ex3
q+ geom_point(aes(x=BudegtMillions)) + xlab("Budget Millions $$$")

#ex4
q+ geom_line(size=1)+ geom_point()




#---------- Mapping vs Setting 

r<- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r + geom_point()

#Add colour
#1. Mapping (what we've done so far):
r+ geom_point(aes(colour=Genre))
#2. Setting:
r+ geom_point(colour="DarkGreen")


#------ Histograms and Density Charts

s<- ggplot(data=movies, aes(x=BudegtMillions))
s + geom_histogram(binwidth = 10)

#add colour 
s+ geom_histogram(binwidth = 10, aes(fill=Genre))
#add a border
s+ geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")


#sometimes we may need density charts
s+ geom_density(aes(fill=Genre))
s+ geom_density(aes(fill=Genre), position="stack")




#------ starting layer tips

t<- ggplot(data=movies,aes(x=AudienceRating))
t + geom_histogram(binwidth=10, fill="white", colour="Blue")

#another way
t<- ggplot(data=movies)
t+ geom_histogram(binwidth = 10, aes(x=AudienceRating), fill="White", colour="Blue")


#----- Statistical Transformations

u<-ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
u+ geom_point()+geom_smooth(fill=NA)

#BOX PLOTS
u<- ggplot(data=movies, aes(x=Genre,y=AudienceRating,colour=Genre))
u+ geom_boxplot()
u+ geom_boxplot(size=1.2)+ geom_point()


#------------ Using Facets

v<- ggplot(data=movies, aes(x=BudegtMillions))
v+ geom_histogram(binwidth = 10, aes(fill=Genre),colour="Black")

#facets
v+ geom_histogram(binwidth = 10, aes(fill=Genre),colour="Black")+ facet_grid(Genre~.,scales="free")



#scatterplots:
w<- ggplot(data=movies, aes(x=CriticRating,y=AudienceRating,colour=Genre))
w + geom_point(size=3)

#facets

w + geom_point(size=3) + facet_grid(Genre~.)

w + geom_point(size=3) + facet_grid(.~Year)

w + geom_point(size=3) + facet_grid(Genre~Year)






#------ coordinates

m<- ggplot(data=movies,aes(x=CriticRating, y=AudienceRating, size=BudegtMillions, colour=Genre))
m+ geom_point()

m + geom_point()+ xlim(50,100)+ ylim(50,100)

#won't work well always 

n<- ggplot(data=movies, aes(x=BudegtMillions))
n+ geom_histogram(binwidth = 10,aes(fill=Genre), color="Black")

n+ geom_histogram(binwidth = 10,aes(fill=Genre), color="Black") +ylim(0,50)


#in above we see the data was removed 
# we use zoom now 
n+ geom_histogram(binwidth = 10,aes(fill=Genre), color="Black") +coord_cartesian(ylim=c(0,50))




#-------Theme
o<- ggplot(data=movies,aes(x=BudegtMillions))
h<- o+ geom_histogram(binwidth = 10,aes(fill=Genre),colour="Black")
h


#axes labels
h+ xlab("Money Axis")+ ylab("Number of Movies")


#label formatting 
h+ xlab("Money Axis")+ ylab("Number of Movies") +
  theme(axis.title.x= element_text(colour="DarkGreen",size=30),
        axis.title.y= element_text(colour="Red",size=30))



#tick mark formatting
h+ xlab("Money Axis")+ ylab("Number of Movies") +
  theme(axis.title.x= element_text(colour="DarkGreen",size=30),
        axis.title.y= element_text(colour="Red",size=30),
        axis.text.x= element_text(size=20),
        axis.text.y=element_text(size=20))




