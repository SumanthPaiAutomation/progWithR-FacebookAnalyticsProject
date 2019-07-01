# Plot weight vs time plot for the ChichWeight data for chick numbered 34
plot(ChickWeight[ChickWeight[,"Chick"] == 34, c("Time", "weight")])

# Box plot for Chicks in diet group 4
boxplot(weight ~ Time, ChickWeight[ChickWeight[,"Diet"] == 4, c("Time", "weight")], xlab = "Time", ylab = "Weight")

# Plot of mean weights of chicks in diet group 4
plot(aggregate(. ~ Time, ChickWeight[ChickWeight[,"Diet"] == 4,], mean)[,c("Time", "weight")])

# Overlapping same calculations for diet group 2
points(aggregate(. ~ Time, ChickWeight[ChickWeight[,"Diet"] == 2,], mean)[,c("Time", "weight")], col = 2)
