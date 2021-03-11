

rm(list=ls())

#输入训练集lable1
trainnn<-read.csv("/home/lvyf/15_9features/predict/train/all_lable1.csv")

#设置路径
setwd("/home/lvyf/15_9features/sample4") 

#批量读入训练集抽样文件夹下的所有lable0文件
fun1 <- function(x){
  read.csv(x,head=T)
}
filename <-  list.files(pattern=".csv")
xx <- lapply(filename,fun1)

l<-length(xx)

versions<-"v1.0"   #循环外,固定版本
work_ad<-"/home/lvyf/15_9features/predict/model_128/" #循环外,设置保存路径
library(e1071)
for (i in 1:l)
{
  set.seed(i)
  trainset<-rbind(trainnn,xx[[i]])
  trainset<-trainset[,-c(1,9,10,23,25,26,27,28,30,32,34,35,36,37,38,41,42,73,74,87,88,89,91,92,94,96,98,99,100,101,102,105,106)]
  trainset[is.na(trainset)]<-0
  trainset$V136=factor(trainset$V136)  
  model<-svm(formula=trainset$V136~.,data=trainset,probability=TRUE)
  filename<-paste(work_ad,"result",i,versions,"128","model.RData",sep="_") #循环内，model下第一行保存路径和名称
 #filename<-paste(work_ad,"result",i,versions,"20191212","model.RData",sep="_") #循环内，model下第一行保存路径和名称
  save(model,file=filename)
  }



