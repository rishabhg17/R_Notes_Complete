#Named Vectors
Charlie<- 1:5
Charlie

#give names
names(Charlie)<- c("a","b","c","d","e")
Charlie
Charlie["d"]
names(Charlie)


#clear names
names(Charlie)<- NULL
Charlie

#------------ Naming Matrix dimensions

temp.vec<- rep(c("a","B","zZ"), each=3)
temp.vec

Bravo<-matrix(temp.vec,3,3)
Bravo
rownames(Bravo)<- c("how","are","you")
Bravo

colnames(Bravo)<-c("X","Y","Z")
Bravo
