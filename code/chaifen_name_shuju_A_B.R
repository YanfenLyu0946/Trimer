rm(list=ls())

t<-read.table("/home/lvyf/15_9features/test/1qb3_output.txt");


flag1<-which(t[,3]=='B')
three_erti_A_B<-t[flag1,]

three_erti<-t[-flag1,]

flag2<-which(three_erti[,2]=='A')
three_erti_A_C<-three_erti[flag2,]
three_erti_B_C<-three_erti[-flag2,]




#提取特征15+9和标签
t1<-three_erti_A_B[,-c(1,2,3,4,5,6,7)];


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


#保存对应数据的名字，预测结果之后合并查看预测结果用
three_erti_A_B_order<-three_erti_A_B[order(-three_erti_A_B[,136]),]

shuju_1<-three_erti_A_B_order[flag,]
shuju_0<-three_erti_A_B_order[-flag,]
name_1<-shuju_1[,c(1,2,3,4,5,6,7)]
name_0<-shuju_0[,c(1,2,3,4,5,6,7)]

write.csv(train_1,file='/home/lvyf/15_9features/test/result_norm_lable_1/1qb3__A_B_1.csv')
write.csv(name_1,file='/home/lvyf/15_9features/test/result_norm_name_1/1qb3__A_B_name_1.csv')

write.csv(train_0,file='/home/lvyf/15_9features/test/result_norm_lable_0/1qb3__A_B_0.csv')
write.csv(name_0,file='/home/lvyf/15_9features/test/result_norm_name_0/1qb3__A_B_name_0.csv')


