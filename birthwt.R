library(MASS)
data(birthwt)
?birthwt
View(birthwt)
head(birthwt)
colnames(birthwt) 

colnames(birthwt) <- c("birthwt.below.2500", "mother.age", "mother.weight", 
                       "race", "mother.smokes", "previous.prem.labor", "hypertension", "uterine.irr", 
                       "physician.visits", "birthwt.grams")

library(plyr)
birthwt <- transform(birthwt, 
                     race = as.factor(mapvalues(race, c(1, 2, 3), 
                                                c("white","black", "other"))),
                     mother.smokes = as.factor(mapvalues(mother.smokes, 
                                                         c(0,1), c("no", "yes"))),
                     hypertension = as.factor(mapvalues(hypertension, 
                                                        c(0,1), c("no", "yes"))),
                     uterine.irr = as.factor(mapvalues(uterine.irr, 
                                                       c(0,1), c("no", "yes"))),
                     birthwt.below.2500 = as.factor(mapvalues(birthwt.below.2500,
                                                              c(0,1), c("no", "yes")))
)

summary(birthwt)

percentFunc <- function(x) {
  res <- x == 1
  100 * (sum(res)/length(res))
}



#b)
with(birthwt, tapply(birthwt.grams, INDEX = list(race, mother.smokes,hypertension), FUN = percentFunc))


proportion <- function(x){
  res <- x == 1
  sum(res)/nrow(birthwt)
}

#c)

with(birthwt, aggregate(birthwt.grams, by = list(race, mother.smokes,hypertension), FUN = proportion))


weight.smoke.tbl <- with(birthwt, table(birthwt.below.2500,race, mother.smokes))
print(weight.smoke.tbl )

birthwt.t.test <- t.test(birthwt.grams ~ mother.smokes, data = birthwt)
birthwt.t.test$conf.int
