

train_1<-read.csv("/home/lvyf/15_9features/train/result_norm_lable1/all_lable1.csv")
train_1<-train_1[,-1]

#设置路径
setwd("/home/lvyf/15_9features/sample4") 

#批量读入训练集抽样文件夹下的所有lable0文件
fun1 <- function(x){
  read.csv(x,head=T)
}
filename <-  list.files(pattern=".csv")
xx <- lapply(filename,fun1)

l<-length(xx)




#标准化

z1<-matrix(rep(0,l*128),nrow=l,ncol=128);
z2<-matrix(rep(0,l*128),nrow=l,ncol=128);

z3<-matrix(rep(0,2*128),nrow=2,ncol=128);

p1<-matrix(rep(0,100*128),nrow=100,ncol=128);

for (j in 1:l)
{
  xx[[j]]<-xx[[j]][,-1]
  for (i in 1:128)
  {
    z1[j,i]<-mean(xx[[j]][,i])
    z2[j,i]<-sd(xx[[j]][,i])
  }
}

for (i in 1:128)

{
  z3[1,i]<-mean(train_1[,i])
  z3[2,i]<-sd(train_1[,i])
}





for (i in 1:100)
{
  for (j in 1:128)
  {
    p1[i,j]<-abs((z1[i,j]-z3[1,j])/(z2[i,j]+z3[2,j]))
  }
}


write.csv(p1,file='/home/lvyf/15_9features/predict/p.csv')
