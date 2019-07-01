install.packages(sm)
data("mtcars")
head(mtcars)
View(mtcars)
?mtcars
#a) Dot plot of mpg for each car model
plot(mtcars$mpg, xlab = "", ylab = "Miles per Gallon")
axis(1, at = 1:32, labels = rownames(mtcars),las=2)
segments(1:32, 0, 1:32, mtcars[, "mpg"])


#b) Create a colored histogram of 12 bins with x-axis as "Miles per gallon??? and y-axis as "frequency
head(mtcars,n=12)
hist(mtcars$mpg,col = "green")

#c) Create kernel density plots of mpg by number of cylinders with legends as 4 cylinders, 6 cylinders and 8 cylinders. Interpret the results obtained in (a) & (b).
library(sm)
attach(mtcars)
cyl.f <- factor(cyl, levels= c(4,6,8),labels = c("4 cylinder", "6 cylinder", "8 cylinder")) 
sm.density.compare(mpg, cyl, xlab="Miles Per Gallon")
title(main="MPG Distribution by Car Cylinders")
colfill<-c(2:(2+length(levels(cyl.f)))) 
legend(locator(1), levels(cyl.f), fill=colfill)

#d) Generate a box plot of car mileage versus transmission type and number of cylinders.
print(mtcars$cyl)
print(mtcars$am)
boxplot(mtcars$mpg~mtcars$cyl,data = mtcars,main="mpg Vs cyl",xlab="cyl",ylab="mpg")
boxplot(mtcars$mpg~mtcars$am,data = mtcars,main="mpg Vs am",xlab="am",ylab="mpg")
boxplot(mtcars$mpg~mtcars$am,mtcars$mpg~mtcars$cyl,data = mtcars,main="mpg Vs cyl&am",xlab="cyl and am",ylab="mpg")


