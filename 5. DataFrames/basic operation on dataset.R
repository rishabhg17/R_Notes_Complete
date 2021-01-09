

#basic operation with a dataFrame
stat[1:10,] #subsetting
stat[3:9,]
stat[c(4,100),]

#remeber how the [] work:

is.data.frame(stat[1,]) #no need to drop=F
is.data.frame(stat[,1])
is.data.frame(stat[,1,drop=F])


#multiply columns
head(stat)
stat$Birth.rate * stat$Internet.users
stat$Birth.rate + stat$Internet.users

#add new column 
head(stat)
stat$Mycalc<- stat$Birth.rate * stat$Internet.users
head(stat)

#remove a column
stat$Mycalc<- NULL
head(stat)


