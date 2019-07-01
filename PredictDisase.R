ExposureTime<-c(5.8,15,21.5,27.5,33.5,39.5,46,51.5)
Normal<-c(98,51,34,35,32,23,12,4)
Diseased<-c(0,3,9,13,19,15,16,7)

df<-data.frame(ExposureTime,Normal,Diseased)
print(df)
plot(ExposureTime,Diseased)

res<-lm(ExposureTime~Diseased)
plot(res)



#b)
a <- data.frame(ExposureTime=26)
result <-  predict(res,a)
print(result)
