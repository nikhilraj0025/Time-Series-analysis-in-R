data("AirPassengers")
View(AirPassengers)
?AirPassengers
plot(AirPassengers)
decompose(AirPassengers)
d1_f1<-diff(AirPassengers)
d1_f1########diff first time did not get###############################
plot(d1_f1)
d1_f2<-diff(d1_f1)
d1_f2#####diff 2nd time did not get so used log function###############
plot(d1_f2)
log_d1<-log(AirPassengers)
plot(log_d1)
d1_f3<-diff(log_d1)################## I=1(because first tym it became stationary) but for log series
plot(d1_f3)
acf(log_d1)
pacf(log_d1)

Model_ap110<-arima(log(AirPassengers),c(1,1,0))
Model_ap111<-arima(log(AirPassengers),c(1,1,1))
Model_air_pred<-predict(Model_ap110,n.ahead=5)###n.ahead will show me next 5 predicted values
Model_air_pred

a<-Model_air_pred$pred
b<-2.718^a##########################antilog###############################
b

plotNormalHistogram((cars$dist))
hist(cars$dist)
shapiro.test(cars$dist)######################to check whether normally distributed or not
shapiro.test(mtcars$mpg)#######shapiro.test##########################
hist(mtcars$mpg)
hist(lcn$LungCap)
library(rcompanion)
plotNormalHistogram(lcn$LungCap)
shapiro.test((lcn$LungCap))
