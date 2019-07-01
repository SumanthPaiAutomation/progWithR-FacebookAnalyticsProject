library(MASS)
data("ChickWeight")
head(ChickWeight)
?ChickWeight
#a
View(ChickWeight)
plot(weight~Time,subset(ChickWeight,Diet==4))

#b
boxplot(weight~Time,subset(ChickWeight,Diet==4),xlab="time",ylab="weight")

#c
plot(aggregate(weight~Time,subset(ChickWeight,Diet==4),mean),xlab="time",ylab="weight")

#d

points(aggregate(weight~Time,subset(ChickWeight,Diet==2),mean),xlab="time",ylab="weight")
