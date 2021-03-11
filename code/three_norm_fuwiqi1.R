

#把一个三体蛋白质拆成3个二体，并再每个二体中进行标准化
rm(list=ls())

#一个蛋白质数据的128个features和lable
rm(list=ls())
t<-read.table("/home/lvyf/15_9features/train/3dli_output.txt");

flag1<-which(t[,3]=='B')
three_erti_A_B<-t[flag1,]

three_erti<-t[-flag1,]

flag2<-which(three_erti[,2]=='A')
three_erti_A_C<-three_erti[flag2,]

three_erti_B_C<-three_erti[-flag2,]


#提取特征15+9和标签
t1<-three_erti_A_B[,-1];
t1<-t1[,-1];
t1<-t1[,-1];
t1<-t1[,-1];
t1<-t1[,-1];
t1<-t1[,-1];
t1<-t1[,-1];

l<-length(t1[,1])
#标准化
z1<-matrix(rep(0,3*128),nrow=3,ncol=128);
for (i in 1:128)
{
  z1[1,i]<-mean(t1[,i])
  z1[2,i]<-max(t1[,i]) 
  z1[3,i]<-min(t1[,i])  
  
  for (j in 1:l)
  {
    t1[j,i]<-(t1[j,i]-z1[3,i])/(z1[2,i]-z1[3,i])
  }
}

t1<-t1[order(-t1[,129]),]
#将文件分成标签为1和标签为0的两个文件
flag<-which(t1[,129]==1);
train_1<-t1[flag,]
train_0<-t1[-flag,]

write.csv(train_1,file='/home/lvyf/15_9features/train/result_norm_lable1/3dli__A_B_1.csv') 
write.csv(train_0,file='/home/lvyf/15_9features/train/result_norm_lable0/3dli__A_B_0.csv') 




#提取文件特征194和标签
t2<-three_erti_A_C[,-1];
t2<-t2[,-1];
t2<-t2[,-1];
t2<-t2[,-1];
t2<-t2[,-1];
t2<-t2[,-1];
t2<-t2[,-1];

l<-length(t2[,1])
#标准化
z2<-matrix(rep(0,3*128),nrow=3,ncol=128);
for (i in 1:128)
{
  z2[1,i]<-mean(t2[,i])
  z2[2,i]<-max(t2[,i]) 
  z2[3,i]<-min(t2[,i])  
  
  for (j in 1:l)
  {
    t2[j,i]<-(t2[j,i]-z2[3,i])/(z2[2,i]-z2[3,i])
  }
}

t2<-t2[order(-t2[,129]),]
#将文件分成标签为1和标签为0的两个文件
flag<-which(t2[,129]==1);
train_11<-t2[flag,]
train_00<-t2[-flag,]

write.csv(train_11,file='/home/lvyf/15_9features/train/result_norm_lable1/3dli__A_C_1.csv') 
write.csv(train_00,file='/home/lvyf/15_9features/train/result_norm_lable0/3dli__A_C_0.csv') 





#提取文件特征194和标签
t3<-three_erti_B_C[,-1];
t3<-t3[,-1];
t3<-t3[,-1];
t3<-t3[,-1];
t3<-t3[,-1];
t3<-t3[,-1];
t3<-t3[,-1];

l<-length(t3[,1])
#标准化
z3<-matrix(rep(0,3*128),nrow=3,ncol=128);
for (i in 1:128)
{
  z3[1,i]<-mean(t3[,i])
  z3[2,i]<-max(t3[,i]) 
  z3[3,i]<-min(t3[,i])  
  
  for (j in 1:l)
  {
    t3[j,i]<-(t3[j,i]-z3[3,i])/(z3[2,i]-z3[3,i])
  }
}

t3<-t3[order(-t3[,129]),]
#将文件分成标签为1和标签为0的两个文件
flag<-which(t3[,129]==1);
train_111<-t3[flag,]
train_000<-t3[-flag,]

write.csv(train_111,file='/home/lvyf/15_9features/train/result_norm_lable1/3dli__B_C_1.csv') 
write.csv(train_000,file='/home/lvyf/15_9features/train/result_norm_lable0/3dli__B_C_0.csv') 








