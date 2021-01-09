# merging data frames

head(stat)
head(mydf)

merged<- merge(stat, mydf, by.x="Country.Code", by.y="Code")
merged
merged$Country<- NULL
merged
