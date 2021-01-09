#visualising with new split

qplot(data=merged, x=Internet.users, y=Birth.rate)
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region)

#1. shapes
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, size=I(5),shape=I(2))
#2. Transparency
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, size=I(5),shape=I(19),alpha=I(0.6))
#3. Title
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, size=I(5),shape=I(19),alpha=I(0.6), main="Birthrate vs internet users")
