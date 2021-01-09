#introduction to qplot()



library(ggplot2)
qplot()
qplot(data=stat, x=Internet.users)
qplot(data=stat, x=Income.Group, y=Birth.rate)
qplot(data=stat, x=Income.Group, y=Birth.rate, size=I(3))
qplot(data=stat, x=Income.Group, y=Birth.rate, size=I(3), colour=I("blue"))
qplot(data=stat, x=Income.Group, y=Birth.rate, geom="boxplot")

qplot(data=stat, x=Internet.users, y=Birth.rate, colour=Income.Group, size=I(5))
