getwd()
setwd("C:\\Users\\it24103583\\Desktop\\IT24103583")
data <-read.table("Exercise - Lab 05.txt",header=TRUE,sep=",")
fix(data)


names(data)<-c ("X1")
attach(data)
hist(X1,main="Histogram For Delivery Times")

summary(X1)

histogram <- hist(X1,main="Histogram of X1",
                  breaks = seq(20,70,length=9))
histogram


breaks <- round(histogram$breaks)
breaks

freq <-histogram$counts
freq


class<-c()

for(i in 1: length(breaks)-1){
  class[i] <-paste0("{",breaks[i],",",breaks[i+1],"}")
}
class
cbind(classes = class,frequency = freq)
lines(mids,freq)

plot (mids,freq,type="o",
      main="freq polygon for no delivery Time",
      ylab="X1",xlab="delivery time",
      ylim=c(0,max(freq)))

cum.freq<-cumsum(freq)
cum.freq

new <-c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i] =0
  }else{
    new[i]=cum.freq[i-1]
  }
}

new
plot(breaks,new,type="o",
     main="freq polygon for Delivery Time",
     ylabs="cummulative frequency ",xlab="delivery Time",
     ylim=c(0,max(cum.freq)))
