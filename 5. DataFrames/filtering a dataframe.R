

head(stat)
filter<- stat$Internet.users<2
stat[filter,]
#we can also do this directly 
stat[stat$Internet.users<2,]

stat[stat$Birth.rate>40 & stat$Internet.users<2,]
stat[stat$Income.Group=="High income",]
