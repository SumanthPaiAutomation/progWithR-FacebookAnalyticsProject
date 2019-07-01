install.packages("RColorBrewer")
install.packages("Rfacebook")
install.packages("httpuv")
install.packages("RCurl")
install.packages("rjson")
install.packages("httr")

#Profile Analytics

library(Rfacebook)
library(httpuv)
library(RColorBrewer)
#"EAACEdEose0cBAPe6eGPv0DLV3yZBdAwU6NG4yjkgZAMPNQgBhE79ZBhwn6bDHhc4ezap7pieqPIg6pTzxMOWLzKDTQQsbQGLaY4VoxFtTXfzMF8MIGSbjZASGQckNw9YpSYMZCf3cCMSu0rxS4yWL1xOA2d3kL8J8ooJFXeMwhWTqsqcPRryXJTMRVnifmw4ZD"
acess_token="EAACEdEose0cBAE8WIwmjQyaW7CGZCpy1iFnZCa95ZBZAWqADUL2IANC0g9FHpVprSdPndsRVPeWTSynt4Lm9yv8y6ZC1DIusiwUAj8bhZCZCxdaE6mueIViExCt4sDq9YvrKVe7yBq5WpBSA15sFrzCx3CtrN7CevoNEApmflVDU3QNpMEB7nuZA4SGF2ZCy6zaYZD"
options(RCurlOptions=list(verbose=FALSE,capath=system.file("CurlSLL","cacert.pem",package = "RCurl"),ssl.verifypeer=FALSE))
me<-getUsers("me",token = acess_token)        
myFriends<-getFriends(acess_token,simplify = FALSE)
table(myFriends)
View(myFriends)

pie(table(myFriends$gender))
pie(table(myFriends$birthday))
pie(table(myFriends$location))
pie(table(myFriends$hometown))
pie(table(myFriends$id))
ids<-c(myFriends$id)
print(ids)
print(myFriends$picture)
print(myFriends$likes)
pie(table(myFriends$name))
View(myFriends$likes_count)
head(myFriends,n=10)




#Business Analytics

library(Rfacebook)
#token<-"EAACEdEose0cBADKAFDiDq9CPYgOTB2E5uBpJprxWqlWbudnZB2ULVf1WW8B9qgY9kmS8PgxotLDEO2DUhPdWzuEUC8ujzNK8L3Rj6ATmRAQhZBukx065PTN43BzZB9TCA6KpS2u3x7DjaLibDuE9J825Uh7HKYm2SLOrrZAgDZCAjFQbw5L1aYpRuNJZCLTuNjZAgG0qojiXwZDZD"
#"EAACEdEose0cBAPe6eGPv0DLV3yZBdAwU6NG4yjkgZAMPNQgBhE79ZBhwn6bDHhc4ezap7pieqPIg6pTzxMOWLzKDTQQsbQGLaY4VoxFtTXfzMF8MIGSbjZASGQckNw9YpSYMZCf3cCMSu0rxS4yWL1xOA2d3kL8J8ooJFXeMwhWTqsqcPRryXJTMRVnifmw4ZD"
token<-"EAACEdEose0cBAE8WIwmjQyaW7CGZCpy1iFnZCa95ZBZAWqADUL2IANC0g9FHpVprSdPndsRVPeWTSynt4Lm9yv8y6ZC1DIusiwUAj8bhZCZCxdaE6mueIViExCt4sDq9YvrKVe7yBq5WpBSA15sFrzCx3CtrN7CevoNEApmflVDU3QNpMEB7nuZA4SGF2ZCy6zaYZD"
me<-getUsers("me",token,private_info = T)
me$name
me$hometown

intel<-getPage("Intel",token)
head(intel$likes_count)
head(intel$message)
intel$created_time
pie(table(intel$created_time))
pie(table(intel$comments_count))
pie(table((intel$shares_count)))
View(intel)
comcount<-intel$comments_count
H<-c(comcount)
barplot(H)
datecre<-intel$created_time
M<-c(datecre)
# Plot the bar chart 
barplot(H,names.arg=M,xlab="Dates",ylab="CommentsCount",col="blue",
        main="ActivityChart",border="red")

my_friends<-getFriends(token)
head(my_friends)

fb_page<-getPage(page = "facebook",token)
post_reaction<-getReactions(post = fb_page$id[1],token,api="v2.8")
post_reaction$likes_count
post_reaction$id



