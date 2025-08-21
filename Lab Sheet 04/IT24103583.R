setwd("C:\\Users\\it24103583\\Desktop\\IT24103583")
branch_data <- read.csv("Exercise.txt",header = TRUE)
head(branch_data)

str(branch_data)

boxplot(branch_data$Sales_X1, main="Boxplot of Sales",ylab="Sales")

fivenum(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

find_outliers<-function(x){
  Q1<- quantile(x,0.25)
  Q2<- quantile(X,0.75)
  IQR_value<- Q3-Q1
  lower_bound<-Q1-1.5*IQR_value
  upper_bound<-Q3+1.5*IQR_value
  outliers<-X[X<lower_bound|x>upper_bound]
  return(outliers)
}
