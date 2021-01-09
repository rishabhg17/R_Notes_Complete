# creating data frames

mydf<- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
head(mydf)
colnames(mydf)<- c("Country","Code","Region")
head(mydf)
rm(mydf)  #we removed to implement our next method

#we can reduce the steps by directly assigning values in the begining 

mydf<- data.frame(Country=Countries_2012_Dataset,Code= Codes_2012_Dataset, Region=Regions_2012_Dataset)
head(mydf)
