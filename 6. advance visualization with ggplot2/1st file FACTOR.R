


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
