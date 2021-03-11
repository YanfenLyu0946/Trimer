

rm(list=ls())

#测试数据，前面是标签为1，后面标签为0，并所有NA数据换成0
test_0<-read.csv("/home/lvyf/15_9features/predict/test/result_norm_lable0/1qb3__A_B_0.csv")
test_1<-read.csv("/home/lvyf/15_9features/predict/test/result_norm_lable1/1qb3__A_B_1.csv")
test<-rbind(test_1,test_0)
test<-test[,-c(1,9,10,23,25,26,27,28,30,32,34,35,36,37,38,41,42,73,74,87,88,89,91,92,94,96,98,99,100,101,102,105,106)]

test[is.na(test)]<-0




t1<-length(test[,2])
p1=matrix(rep(0,t1*100),nrow=t1,ncol=100);

versions<-"v1.0"
work_ad <-"/home/lvyf/15_9features/predict/model_96/"
library(e1071)
setwd(work_ad)
filename<- list.files()
for (i in filename)
{
  j<- which(filename==i)
  set.seed(j)
  load(i)
  pre1<-predict (model, test[,c(1:96)],probability=TRUE)
  p2<-attr(pre1, "probabilities")
  p1[,j]<-p2[,1]

}


write.csv(p1,file='/home/lvyf/15_9features/predict/svm_result_96/1qb3_A_B_0.csv')
