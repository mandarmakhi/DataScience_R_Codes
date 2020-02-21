model<- lm(sunday~daily,data = NewspaperData)
summary(model)

pred<- predict(model,newdata = data.frame( daily=300))
pred


#load data
Nd<-NewspaperData.csv("C:\Users\Mandar\Desktop\excelr\NewspaperData.csv")


#Visulaization
library("lattice")
dotplot(NewspaperData$sunday, main="Dot Plot of sunday Circulation", col="dodgerblue4")
dotplot(NewspaperData$daily, main="Dot Plot of daily Circulation", col="dodgerblue4")
boxplot(NewspaperData,col="dodgerblue4")
boxplot(NewspaperData,col="red")


#Regression equation 
#syntax model<-lm(y~x,data=dat set name)
#finding Y
model<- lm(sunday~daily,data=NewspaperData)
summary(model)


#finding Y^2 pridication 
new<-data.frame(daily=c(200,250,300))
pred<-predict(model,newdata=new)



#finding error
pred<-predict(model)
finaldat<- data.frame(NewspaperData,pred,"ERROR"=NewspaperData$sunday-pred)
