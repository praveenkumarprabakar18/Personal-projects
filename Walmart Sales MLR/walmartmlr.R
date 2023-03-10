library(tidyverse)
library(coefplot)
data1<-read.csv("Walmart.csv")
head(data1)
sales1<-lm(Weekly_Sales~Fuel_Price+CPI+Temperature+Unemployment, data=data1)
sales2<-lm(Weekly_Sales~CPI+Temperature+Unemployment, data=data1)
sales3<-lm(Weekly_Sales~CPI+Unemployment, data=data1)
sales
coefplot(sales)
summary(sales1)
summary(sales2)
summary(sales3)
cor(data1$Temperature, data1$CPI, data1$Unemployment)

cor(data1[sapply(data1, is.numeric)])
pred<-predict(sales2)
pred_data<-mutate(data1, Predicted_Sales=pred)
head(pred_data)
print(predict(sales2, data.frame(CPI=213, Temperature=43, Unemployment=9)))
