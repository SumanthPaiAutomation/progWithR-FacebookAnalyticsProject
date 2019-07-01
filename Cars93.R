#6.	From the library MASS, use Cars93 data and perform the following.
#a) Using the Cars93 data and the `t.test()` function, run a t-test to see if average `MPG.highway` is different between US and non-US vehicles.
#b) What is the confidence interval for the difference? Interpret this confidence interval.
#c) Repeat part (a) using the `wilcox.test()` function.
#d) Are your results for (a) and (c) very different?
 
library(MASS)
library(plyr)
library(reshape)  # You may need to install this one first!
library(ggplot2)
par(mfrow = c(1,2))
# USA cars
with(Cars93, qqnorm(MPG.highway[Origin == "USA"]))
with(Cars93, qqline(MPG.highway, col = "blue"))
# Foreign cars
with(Cars93, qqnorm(MPG.highway[Origin == "non-USA"]))
with(Cars93, qqline(MPG.highway, col = "blue"))

mpg.t.test <- t.test(MPG.highway ~ Origin, data = Cars93)
mpg.t.test

mpg.wilcox.test <- wilcox.test(MPG.highway ~ Origin, data = Cars93)
mpg.wilcox.test