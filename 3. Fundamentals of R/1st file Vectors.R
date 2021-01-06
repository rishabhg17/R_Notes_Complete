

MyFirstVector<- c(3, 45, 56, 732)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

# as by default all number stored as double, we need to add L to make number integer

V2<- c(3L, 12L, 243L, 0L)
is.numeric(V2)
is.integer(V2)
is.double(V2)

#now making character vectors

V3<- c("a", "B23", "Hello", 7)
V3
is.character(V3)
is.numeric(V3)




seq() #sequence - like ':' but here we can add steps
rep() #replicate


seq(1,15)
1:15


seq(1,15,2)

z<-seq(1,15,4)
z



#first arguemt thing we wanna replicate and second parameter number of times we wanna replicate
rep(3,50)

d<-rep(3,50)


rep("a",5)

#we can also replicate an array (also called vector)
x<-c(80,20)
y<-rep(x,5)
y