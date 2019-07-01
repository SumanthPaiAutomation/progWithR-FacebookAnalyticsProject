data("ChickWeight")
head(ChickWeight)
View(ChickWeight)
#a) Construct a plot of weight against time for chick number 34. 
wvec<-c(ChickWeight$weight[377:388])
print(wvec)
tvec<-c(ChickWeight$Time[377:388])
print(tvec)
plot(wvec,tvec,main = "Chick 34",xlab = "weight",ylab = "Time")

#b)For chicks in diet group 4, display box plots for each time point. 
print(ChickWeight$Diet[461:578])
grp<-ChickWeight$Diet[461:578]
print(grp)
print(ChickWeight$Time[461:578])
trp<-ChickWeight$Time[461:578]
boxplot(trp~grp,data = ChickWeight,main="Time Vs Weight of grp 4 diet",xlab="Weight",ylab="Time",col="red")

#c)Compute the mean weight for chicks in group 4, for each time point. Plot this mean value against time
print(ChickWeight$weight[37:48])
wmean<-mean(ChickWeight$weight[37:48])
print(wmean)
timer<-ChickWeight$Time[37:48]
print(timer)
plot(ChickWeight$weight[37:48],ChickWeight$Time[37:48],main = "grp 4 ",xlab="weight",ylab="time",col="red")

#d)Repeat the previous computation for group 2. Add the mean for group 2 to the existing plot
print(ChickWeight$weight[13:24])
wmean2<-mean(ChickWeight$weight[13:24])
w3<-ChickWeight[ChickWeight[,"Diet"]==2,c("weight")]
w3
print(wmean2)
timer2<-ChickWeight$Time[13:24]
timer3<-ChickWeight[ChickWeight[,"Diet"]==2,c("Time")]
print(timer3)
print(timer2)
plot(ChickWeight$weight[37:48],ChickWeight$Time[37:48],main = "grp 4 ",xlab="weight",ylab="time",col="red")
points(ChickWeight$weight[13:24],ChickWeight$Time[13:24],main = "grp 2 ",xlab="weight",ylab="time",col="green")
#matplot(ChickWeight$weight[13:24], cbind(ChickWeight$Time[37:48],ChickWeight$Time[13:24]),type="l",col=c("red","green"),lty=c(1,1))

