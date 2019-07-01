library(MASS)
data(cats)
View(cats)
?cats
#a) Extract Male cats data set separately.
print(cats$Sex[48:144])
male_cats<-cats$Sex[48:144]
print(male_cats)

#b) Display a scatterplot for male cats. Interpret the dependent and independent variables of the data.
plot(male_cats)
print(cats$Bwt[48:144])
print(cats$Hwt[48:144])
plot(x = cats$Bwt[48:144],y =cats$Hwt[48:144] ,
     
     xlab = "Body weight male",
     ylab = "Heart weight male",
     xlim = c(2.0,3.9),
     ylim = c(6.5,20.5),
     
     main = "Body Weight vs Heart weight of Male Cats"
)

#c) Fit a linear regression model for male cats. Add fitted regression line to scatterplot of male cats data
summary(cats)
relation <- lm(cats$Hwt[48:144]~cats$Bwt[48:144])
print(relation)
print(summary(relation))
x1<-cats$Bwt[48:144]
y1<-cats$Hwt[48:144]


relation <- lm(cats$Hwt[48:144]~cats$Bwt[48:144])
abline(lm(cats$Hwt[48:144]~cats$Bwt[48:144]))
plot(relation)

