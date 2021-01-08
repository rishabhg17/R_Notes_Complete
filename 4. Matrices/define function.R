



randomName<- function(rows){
Data<- MinutesPlayed[rows,]
matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6),pch=15:18, horiz=F) 
}

randomName(1:5)
