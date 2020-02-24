#upload cars data set
#scatter plots matrix:
pairs(Cars)
#correlation matrix
car(Cars)

#Regression Model and Summary

model.car<-lm(MPG~.,data=Cars)
summary(model.car)
#Multi-colinearity
install.packages("car")
library(car)
car::vif(model.car)#vif=(variance inflation factor)
#Diagonstic Plots:
#Residual plots,QQ plots,Std.Residuals vs Fitted
plot(model.car)
residualPlots(model.car)
#Added Variablr PLots
#avPlots(model.car,id.n=2,id.cex=0.7)
#QQ plots of studentized residuals
qqPlot(model.car)
#Deletion Diagnostics
influenceIndexPlot(model.car)#index Plots of the influence measures

#iteration 1
Cars1<-Cars[-77,]#here we create new dataset Cars1 using Cars Valuee 77 is a outlier so we will remove it  
model1<-lm(Cars1$MPG~.,data=Cars1)#create new model
car::vif(model1)
plot(model1)
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1)

#iteration 2

Cars2<-Cars[-c(77,79),]
model1<-lm(Cars2$MPG~.,data=Cars2)
car::vif(model1)
plot(model1)
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1)


#iteration 3

Cars3<-Cars[-c(77,79,80),]
model1<-lm(Cars3$MPG~.,data=Cars3)
car::vif(model1)
plot(model1)
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1)



Cars4<-Cars[-c(1,60,77,79,80),]
model1<-lm(Cars4$MPG~.,data=Cars4)
car::vif(model1)
plot(model1)
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1)



Cars5<-Cars[-c(1,4,5,60,64,66,77,79,80),]
model1<-lm(Cars5$MPG~.,data=Cars5)
car::vif(model1)
plot(model1)
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1)
