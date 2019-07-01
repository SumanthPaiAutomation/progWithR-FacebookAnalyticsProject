library("MASS")

# Extracting male cats data separately
maleCats <- cats[cats[, "Sex"] == "M", ]
maleCats

# Scatter plot for the data.
plot(maleCats[, c("Bwt", "Hwt")], xlab = "Body weight", ylab = "Heart weight")

# Fit a linear regression model (Not sure)
plot(lm(maleCats[, "Bwt"]~maleCats[, "Hwt"], data = cats))

MC<-subset(cats,sex="M")
MC
plot(MC$Bwt,MC$Hwt, xlab = "Body weight", ylab = "Heart weight")
