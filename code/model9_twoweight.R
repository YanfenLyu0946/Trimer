rm(list=ls())

#128特征模型输出结果，96维特征模型输出结果
result_A_B_1<-read.csv("/home/lvyf/15_9features/predict/svm_128_sample100_result/result/1osp__A_B.csv")
result_A_B_2<-read.csv("/home/lvyf/15_9features/predict/svm_96_sample100_result/result/1osp__A_B.csv")

#result第一列是氨基酸对的序号,2,3,4,5,6是128维features采样20,40,60,80,100次的结果
#7,8,9,10,11是96features采用20,40,60,80,100次的结果
result<-cbind(result_A_B_1,result_A_B_2)
result<-result[,-7]

l1<-length(result[,2])
#整合2次features结果，形成9个模型。如下：

#model1  128预测结果的5/6+96预测结果的1/6   采样20,40,60,80,100的结果
gg1<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg1[,1]<-result[,1]

for (i in 1:l1)
{
  gg1[i,2]<-5/6*result[i,2]+1/6*result[i,7]
  gg1[i,3]<-5/6*result[i,3]+1/6*result[i,8]
  gg1[i,4]<-5/6*result[i,4]+1/6*result[i,9]
  gg1[i,5]<-5/6*result[i,5]+1/6*result[i,10]
  gg1[i,6]<-5/6*result[i,6]+1/6*result[i,11]
}
write.csv(gg1,file='/home/lvyf/15_9features/predict/model_9/model1/1osp__A_B_9model1.csv')


#model2  128预测结果的4/5+96预测结果的1/5   采样20,40,60,80,100的结果
gg2<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg2[,1]<-result[,1]

for (i in 1:l1)
{
  gg2[i,2]<-4/5*result[i,2]+1/5*result[i,7]
  gg2[i,3]<-4/5*result[i,3]+1/5*result[i,8]
  gg2[i,4]<-4/5*result[i,4]+1/5*result[i,9]
  gg2[i,5]<-4/5*result[i,5]+1/5*result[i,10]
  gg2[i,6]<-4/5*result[i,6]+1/5*result[i,11]
}
write.csv(gg2,file='/home/lvyf/15_9features/predict/model_9/model2/1osp__A_B_9model2.csv')

#model3  128预测结果的3/4+96预测结果的1/4   采样20,40,60,80,100的结果
gg3<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg3[,1]<-result[,1]

for (i in 1:l1)
{
  gg3[i,2]<-3/4*result[i,2]+1/4*result[i,7]
  gg3[i,3]<-3/4*result[i,3]+1/4*result[i,8]
  gg3[i,4]<-3/4*result[i,4]+1/4*result[i,9]
  gg3[i,5]<-3/4*result[i,5]+1/4*result[i,10]
  gg3[i,6]<-3/4*result[i,6]+1/4*result[i,11]
}
write.csv(gg3,file='/home/lvyf/15_9features/predict/model_9/model3/1osp__A_B_9model3.csv')


#model4  128预测结果的2/3+96预测结果的1/3   采样20,40,60,80,100的结果
gg4<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg4[,1]<-result[,1]

for (i in 1:l1)
{
  gg4[i,2]<-2/3*result[i,2]+1/3*result[i,7]
  gg4[i,3]<-2/3*result[i,3]+1/3*result[i,8]
  gg4[i,4]<-2/3*result[i,4]+1/3*result[i,9]
  gg4[i,5]<-2/3*result[i,5]+1/3*result[i,10]
  gg4[i,6]<-2/3*result[i,6]+1/3*result[i,11]
}
write.csv(gg4,file='/home/lvyf/15_9features/predict/model_9/model4/1osp__A_B_9model4.csv')


#model5  128预测结果的1/3+96预测结果的2/3   采样20,40,60,80,100的结果
gg5<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg5[,1]<-result[,1]

for (i in 1:l1)
{
  gg5[i,2]<-1/3*result[i,2]+2/3*result[i,7]
  gg5[i,3]<-1/3*result[i,3]+2/3*result[i,8]
  gg5[i,4]<-1/3*result[i,4]+2/3*result[i,9]
  gg5[i,5]<-1/3*result[i,5]+2/3*result[i,10]
  gg5[i,6]<-1/3*result[i,6]+2/3*result[i,11]
}
write.csv(gg5,file='/home/lvyf/15_9features/predict/model_9/model5/1osp__A_B_9model5.csv')


#model6  128预测结果的1/4+96预测结果的3/4   采样20,40,60,80,100的结果
gg6<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg6[,1]<-result[,1]

for (i in 1:l1)
{
  gg6[i,2]<-1/4*result[i,2]+3/4*result[i,7]
  gg6[i,3]<-1/4*result[i,3]+3/4*result[i,8]
  gg6[i,4]<-1/4*result[i,4]+3/4*result[i,9]
  gg6[i,5]<-1/4*result[i,5]+3/4*result[i,10]
  gg6[i,6]<-1/4*result[i,6]+3/4*result[i,11]
}
write.csv(gg6,file='/home/lvyf/15_9features/predict/model_9/model6/1osp__A_B_9model6.csv')


#model7  128预测结果的1/5+96预测结果的4/5   采样20,40,60,80,100的结果
gg7<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg7[,1]<-result[,1]

for (i in 1:l1)
{
  gg7[i,2]<-1/5*result[i,2]+4/5*result[i,7]
  gg7[i,3]<-1/5*result[i,3]+4/5*result[i,8]
  gg7[i,4]<-1/5*result[i,4]+4/5*result[i,9]
  gg7[i,5]<-1/5*result[i,5]+4/5*result[i,10]
  gg7[i,6]<-1/5*result[i,6]+4/5*result[i,11]
}
write.csv(gg7,file='/home/lvyf/15_9features/predict/model_9/model7/1osp__A_B_9model7.csv')


#model8  128预测结果的1/6+96预测结果的5/6   采样20,40,60,80,100的结果
gg8<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg8[,1]<-result[,1]

for (i in 1:l1)
{
  gg8[i,2]<-1/6*result[i,2]+5/6*result[i,7]
  gg8[i,3]<-1/6*result[i,3]+5/6*result[i,8]
  gg8[i,4]<-1/6*result[i,4]+5/6*result[i,9]
  gg8[i,5]<-1/6*result[i,5]+5/6*result[i,10]
  gg8[i,6]<-1/6*result[i,6]+5/6*result[i,11]
}
write.csv(gg8,file='/home/lvyf/15_9features/predict/model_9/model8/1osp__A_B_9model8.csv')


#model9  128预测结果的1/2+96预测结果的1/2   采样20,40,60,80,100的结果
gg9<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg9[,1]<-result[,1]
 
for (i in 1:l1)
{
  gg9[i,2]<-1/2*result[i,2]+1/2*result[i,7]
  gg9[i,3]<-1/2*result[i,3]+1/2*result[i,8]
  gg9[i,4]<-1/2*result[i,4]+1/2*result[i,9]
  gg9[i,5]<-1/2*result[i,5]+1/2*result[i,10]
  gg9[i,6]<-1/2*result[i,6]+1/2*result[i,11]
}
write.csv(gg9,file='/home/lvyf/15_9features/predict/model_9/model9/1osp__A_B_9model9.csv')


rm(list=ls())

#128特征模型输出结果，96维特征模型输出结果
result_A_C_1<-read.csv("/home/lvyf/15_9features/predict/svm_128_sample100_result/result/1osp__A_C.csv")
result_A_C_2<-read.csv("/home/lvyf/15_9features/predict/svm_96_sample100_result/result/1osp__A_C.csv")

#result第一列是氨基酸对的序号,2,3,4,5,6是128维features采样20,40,60,80,100次的结果
#7,8,9,10,11是96features采用20,40,60,80,100次的结果
result<-cbind(result_A_C_1,result_A_C_2)
result<-result[,-7]

l1<-length(result[,2])
#整合2次features结果，形成9个模型。如下：

#model1  128预测结果的5/6+96预测结果的1/6   采样20,40,60,80,100的结果
gg1<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg1[,1]<-result[,1]

for (i in 1:l1)
{
  gg1[i,2]<-5/6*result[i,2]+1/6*result[i,7]
  gg1[i,3]<-5/6*result[i,3]+1/6*result[i,8]
  gg1[i,4]<-5/6*result[i,4]+1/6*result[i,9]
  gg1[i,5]<-5/6*result[i,5]+1/6*result[i,10]
  gg1[i,6]<-5/6*result[i,6]+1/6*result[i,11]
}
write.csv(gg1,file='/home/lvyf/15_9features/predict/model_9/model1/1osp__A_C_9model1.csv')


#model2  128预测结果的4/5+96预测结果的1/5   采样20,40,60,80,100的结果
gg2<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg2[,1]<-result[,1]

for (i in 1:l1)
{
  gg2[i,2]<-4/5*result[i,2]+1/5*result[i,7]
  gg2[i,3]<-4/5*result[i,3]+1/5*result[i,8]
  gg2[i,4]<-4/5*result[i,4]+1/5*result[i,9]
  gg2[i,5]<-4/5*result[i,5]+1/5*result[i,10]
  gg2[i,6]<-4/5*result[i,6]+1/5*result[i,11]
}
write.csv(gg2,file='/home/lvyf/15_9features/predict/model_9/model2/1osp__A_C_9model2.csv')

#model3  128预测结果的3/4+96预测结果的1/4   采样20,40,60,80,100的结果
gg3<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg3[,1]<-result[,1]

for (i in 1:l1)
{
  gg3[i,2]<-3/4*result[i,2]+1/4*result[i,7]
  gg3[i,3]<-3/4*result[i,3]+1/4*result[i,8]
  gg3[i,4]<-3/4*result[i,4]+1/4*result[i,9]
  gg3[i,5]<-3/4*result[i,5]+1/4*result[i,10]
  gg3[i,6]<-3/4*result[i,6]+1/4*result[i,11]
}
write.csv(gg3,file='/home/lvyf/15_9features/predict/model_9/model3/1osp__A_C_9model3.csv')


#model4  128预测结果的2/3+96预测结果的1/3   采样20,40,60,80,100的结果
gg4<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg4[,1]<-result[,1]

for (i in 1:l1)
{
  gg4[i,2]<-2/3*result[i,2]+1/3*result[i,7]
  gg4[i,3]<-2/3*result[i,3]+1/3*result[i,8]
  gg4[i,4]<-2/3*result[i,4]+1/3*result[i,9]
  gg4[i,5]<-2/3*result[i,5]+1/3*result[i,10]
  gg4[i,6]<-2/3*result[i,6]+1/3*result[i,11]
}
write.csv(gg4,file='/home/lvyf/15_9features/predict/model_9/model4/1osp__A_C_9model4.csv')


#model5  128预测结果的1/3+96预测结果的2/3   采样20,40,60,80,100的结果
gg5<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg5[,1]<-result[,1]

for (i in 1:l1)
{
  gg5[i,2]<-1/3*result[i,2]+2/3*result[i,7]
  gg5[i,3]<-1/3*result[i,3]+2/3*result[i,8]
  gg5[i,4]<-1/3*result[i,4]+2/3*result[i,9]
  gg5[i,5]<-1/3*result[i,5]+2/3*result[i,10]
  gg5[i,6]<-1/3*result[i,6]+2/3*result[i,11]
}
write.csv(gg5,file='/home/lvyf/15_9features/predict/model_9/model5/1osp__A_C_9model5.csv')


#model6  128预测结果的1/4+96预测结果的3/4   采样20,40,60,80,100的结果
gg6<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg6[,1]<-result[,1]

for (i in 1:l1)
{
  gg6[i,2]<-1/4*result[i,2]+3/4*result[i,7]
  gg6[i,3]<-1/4*result[i,3]+3/4*result[i,8]
  gg6[i,4]<-1/4*result[i,4]+3/4*result[i,9]
  gg6[i,5]<-1/4*result[i,5]+3/4*result[i,10]
  gg6[i,6]<-1/4*result[i,6]+3/4*result[i,11]
}
write.csv(gg6,file='/home/lvyf/15_9features/predict/model_9/model6/1osp__A_C_9model6.csv')


#model7  128预测结果的1/5+96预测结果的4/5   采样20,40,60,80,100的结果
gg7<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg7[,1]<-result[,1]

for (i in 1:l1)
{
  gg7[i,2]<-1/5*result[i,2]+4/5*result[i,7]
  gg7[i,3]<-1/5*result[i,3]+4/5*result[i,8]
  gg7[i,4]<-1/5*result[i,4]+4/5*result[i,9]
  gg7[i,5]<-1/5*result[i,5]+4/5*result[i,10]
  gg7[i,6]<-1/5*result[i,6]+4/5*result[i,11]
}
write.csv(gg7,file='/home/lvyf/15_9features/predict/model_9/model7/1osp__A_C_9model7.csv')


#model8  128预测结果的1/6+96预测结果的5/6   采样20,40,60,80,100的结果
gg8<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg8[,1]<-result[,1]

for (i in 1:l1)
{
  gg8[i,2]<-1/6*result[i,2]+5/6*result[i,7]
  gg8[i,3]<-1/6*result[i,3]+5/6*result[i,8]
  gg8[i,4]<-1/6*result[i,4]+5/6*result[i,9]
  gg8[i,5]<-1/6*result[i,5]+5/6*result[i,10]
  gg8[i,6]<-1/6*result[i,6]+5/6*result[i,11]
}
write.csv(gg8,file='/home/lvyf/15_9features/predict/model_9/model8/1osp__A_C_9model8.csv')


#model9  128预测结果的1/2+96预测结果的1/2   采样20,40,60,80,100的结果
gg9<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg9[,1]<-result[,1]
 
for (i in 1:l1)
{
  gg9[i,2]<-1/2*result[i,2]+1/2*result[i,7]
  gg9[i,3]<-1/2*result[i,3]+1/2*result[i,8]
  gg9[i,4]<-1/2*result[i,4]+1/2*result[i,9]
  gg9[i,5]<-1/2*result[i,5]+1/2*result[i,10]
  gg9[i,6]<-1/2*result[i,6]+1/2*result[i,11]
}
write.csv(gg9,file='/home/lvyf/15_9features/predict/model_9/model9/1osp__A_C_9model9.csv')




rm(list=ls())

#128特征模型输出结果，96维特征模型输出结果
result_B_C_1<-read.csv("/home/lvyf/15_9features/predict/svm_128_sample100_result/result/1osp__B_C.csv")
result_B_C_2<-read.csv("/home/lvyf/15_9features/predict/svm_96_sample100_result/result/1osp__B_C.csv")

#result第一列是氨基酸对的序号,2,3,4,5,6是128维features采样20,40,60,80,100次的结果
#7,8,9,10,11是96features采用20,40,60,80,100次的结果
result<-cbind(result_B_C_1,result_B_C_2)
result<-result[,-7]

l1<-length(result[,2])
#整合2次features结果，形成9个模型。如下：

#model1  128预测结果的5/6+96预测结果的1/6   采样20,40,60,80,100的结果
gg1<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg1[,1]<-result[,1]

for (i in 1:l1)
{
  gg1[i,2]<-5/6*result[i,2]+1/6*result[i,7]
  gg1[i,3]<-5/6*result[i,3]+1/6*result[i,8]
  gg1[i,4]<-5/6*result[i,4]+1/6*result[i,9]
  gg1[i,5]<-5/6*result[i,5]+1/6*result[i,10]
  gg1[i,6]<-5/6*result[i,6]+1/6*result[i,11]
}
write.csv(gg1,file='/home/lvyf/15_9features/predict/model_9/model1/1osp__B_C_9model1.csv')


#model2  128预测结果的4/5+96预测结果的1/5   采样20,40,60,80,100的结果
gg2<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg2[,1]<-result[,1]

for (i in 1:l1)
{
  gg2[i,2]<-4/5*result[i,2]+1/5*result[i,7]
  gg2[i,3]<-4/5*result[i,3]+1/5*result[i,8]
  gg2[i,4]<-4/5*result[i,4]+1/5*result[i,9]
  gg2[i,5]<-4/5*result[i,5]+1/5*result[i,10]
  gg2[i,6]<-4/5*result[i,6]+1/5*result[i,11]
}
write.csv(gg2,file='/home/lvyf/15_9features/predict/model_9/model2/1osp__B_C_9model2.csv')

#model3  128预测结果的3/4+96预测结果的1/4   采样20,40,60,80,100的结果
gg3<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg3[,1]<-result[,1]

for (i in 1:l1)
{
  gg3[i,2]<-3/4*result[i,2]+1/4*result[i,7]
  gg3[i,3]<-3/4*result[i,3]+1/4*result[i,8]
  gg3[i,4]<-3/4*result[i,4]+1/4*result[i,9]
  gg3[i,5]<-3/4*result[i,5]+1/4*result[i,10]
  gg3[i,6]<-3/4*result[i,6]+1/4*result[i,11]
}
write.csv(gg3,file='/home/lvyf/15_9features/predict/model_9/model3/1osp__B_C_9model3.csv')


#model4  128预测结果的2/3+96预测结果的1/3   采样20,40,60,80,100的结果
gg4<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg4[,1]<-result[,1]

for (i in 1:l1)
{
  gg4[i,2]<-2/3*result[i,2]+1/3*result[i,7]
  gg4[i,3]<-2/3*result[i,3]+1/3*result[i,8]
  gg4[i,4]<-2/3*result[i,4]+1/3*result[i,9]
  gg4[i,5]<-2/3*result[i,5]+1/3*result[i,10]
  gg4[i,6]<-2/3*result[i,6]+1/3*result[i,11]
}
write.csv(gg4,file='/home/lvyf/15_9features/predict/model_9/model4/1osp__B_C_9model4.csv')


#model5  128预测结果的1/3+96预测结果的2/3   采样20,40,60,80,100的结果
gg5<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg5[,1]<-result[,1]

for (i in 1:l1)
{
  gg5[i,2]<-1/3*result[i,2]+2/3*result[i,7]
  gg5[i,3]<-1/3*result[i,3]+2/3*result[i,8]
  gg5[i,4]<-1/3*result[i,4]+2/3*result[i,9]
  gg5[i,5]<-1/3*result[i,5]+2/3*result[i,10]
  gg5[i,6]<-1/3*result[i,6]+2/3*result[i,11]
}
write.csv(gg5,file='/home/lvyf/15_9features/predict/model_9/model5/1osp__B_C_9model5.csv')


#model6  128预测结果的1/4+96预测结果的3/4   采样20,40,60,80,100的结果
gg6<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg6[,1]<-result[,1]

for (i in 1:l1)
{
  gg6[i,2]<-1/4*result[i,2]+3/4*result[i,7]
  gg6[i,3]<-1/4*result[i,3]+3/4*result[i,8]
  gg6[i,4]<-1/4*result[i,4]+3/4*result[i,9]
  gg6[i,5]<-1/4*result[i,5]+3/4*result[i,10]
  gg6[i,6]<-1/4*result[i,6]+3/4*result[i,11]
}
write.csv(gg6,file='/home/lvyf/15_9features/predict/model_9/model6/1osp__B_C_9model6.csv')


#model7  128预测结果的1/5+96预测结果的4/5   采样20,40,60,80,100的结果
gg7<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg7[,1]<-result[,1]

for (i in 1:l1)
{
  gg7[i,2]<-1/5*result[i,2]+4/5*result[i,7]
  gg7[i,3]<-1/5*result[i,3]+4/5*result[i,8]
  gg7[i,4]<-1/5*result[i,4]+4/5*result[i,9]
  gg7[i,5]<-1/5*result[i,5]+4/5*result[i,10]
  gg7[i,6]<-1/5*result[i,6]+4/5*result[i,11]
}
write.csv(gg7,file='/home/lvyf/15_9features/predict/model_9/model7/1osp__B_C_9model7.csv')


#model8  128预测结果的1/6+96预测结果的5/6   采样20,40,60,80,100的结果
gg8<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg8[,1]<-result[,1]

for (i in 1:l1)
{
  gg8[i,2]<-1/6*result[i,2]+5/6*result[i,7]
  gg8[i,3]<-1/6*result[i,3]+5/6*result[i,8]
  gg8[i,4]<-1/6*result[i,4]+5/6*result[i,9]
  gg8[i,5]<-1/6*result[i,5]+5/6*result[i,10]
  gg8[i,6]<-1/6*result[i,6]+5/6*result[i,11]
}
write.csv(gg8,file='/home/lvyf/15_9features/predict/model_9/model8/1osp__B_C_9model8.csv')


#model9  128预测结果的1/2+96预测结果的1/2   采样20,40,60,80,100的结果
gg9<-matrix(rep(0,l1*6),nrow=l1,ncol=6);
gg9[,1]<-result[,1]
 
for (i in 1:l1)
{
  gg9[i,2]<-1/2*result[i,2]+1/2*result[i,7]
  gg9[i,3]<-1/2*result[i,3]+1/2*result[i,8]
  gg9[i,4]<-1/2*result[i,4]+1/2*result[i,9]
  gg9[i,5]<-1/2*result[i,5]+1/2*result[i,10]
  gg9[i,6]<-1/2*result[i,6]+1/2*result[i,11]
}
write.csv(gg9,file='/home/lvyf/15_9features/predict/model_9/model9/1osp__B_C_9model9.csv')

