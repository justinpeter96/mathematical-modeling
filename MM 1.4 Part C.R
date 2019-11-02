rm(list=ls())
n<-5
rw1d1<-function(x){ a<-x
while(is.element(a,c(1:(n-1))))
{a<-a+sample(c(-1,1),1,prob=c(.2,.8))}
return(a)}
for(i in 0:n){
  b<-rep(i,10000)
  lst<-sapply(b,rw1d1)
  ans<-sum(lst)/(n*10000)
  print(ans)}
barplot(table(sample(c(-1,1),10000,replace=TRUE,prob=c(.2,.8))))
