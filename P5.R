# Create a data frame
coalfaceworkers <- data.frame(Exposure_Time=c(5.8,15,21.5,27.5,33.5,39.5,46,51.5),
                              Normal=c(98,51,34,35,32,23,12,4),
                              Diseased=c(0,3,9,13,19,15,16,7))

# Fit linear regression model
plot(coalfaceworkers$Exposure_Time~coalfaceworkers$Diseased, data = coalfaceworkers)
abline(lm(coalfaceworkers$Exposure_Time~coalfaceworkers$Diseased))

# Predict if exposure time is doubled
new_exposure<-data.frame("Exposure_Time"=coalfaceworkers$Exposure_Time*2)
diseaseprediction<-predict(lm.model.coalfaceworker,newdata = new_exposure)
diseaseprediction
