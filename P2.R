# Plot of car model vs miles per gallon
plot(mtcars[, c(0, 1)], xaxt = 'n', xlab = "", ylab = "Miles per Gallon")
axis(1, at = 1:32, labels = rownames(mtcars), las = 2)
segments(1:32, 0, 1:32, mtcars[, "mpg"])

# Histogram of miles per gallon and its frequency
hist(mtcars[, "mpg"], nclass = 12, xlab = "Miles per Gallon", ylab = "Frequency")

# Kernel density plots for miles per gallon of each cylinder type
library(sm)
attach(mtcars)
cyl.f <- factor(cyl, levels = c(4, 6, 8))
sm.density.compare(mpg, cyl)
colfill <- c(2:(2 + length(levels(cyl.f))))
legend("topright", levels(cyl.f), fill = colfill, title = "Cylinders")

View(mtcars)
