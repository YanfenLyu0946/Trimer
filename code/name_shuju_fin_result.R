

rm(list=ls())


#对应数据的名字合并到文件result_name
result_A_C_1<-read.csv("D:/吕艳芬/预测真实复合物/三体/三体文章/shuju_name/result_norm_name_1/1p32__A_C_name_1.csv")
l<-length(result_A_C_1[,4])

result_A_C_2<-read.csv("D:/吕艳芬/预测真实复合物/三体/三体文章/shuju_name/result_norm_name_0/1p32__A_C_name_0.csv")

#合并名字，lable1上，lable0下
result_name<-rbind(result_A_C_1,result_A_C_2)
result_name<-result_name[,-1]


#采样20,40,60,80,100次结果和数据名字合并放入result文件，前7列是蛋白质名字，链的信息，氨基酸名字和位置
#注意第8列是预测该位置氨基酸标签为1的概率排序，前l行对应ture positive residue pair
#后5列对应的是采样20，40，60，80，100的结果


result_A_C_3<-read.csv("D:/吕艳芬/预测真实复合物/三体/三体文章/9model/model1/1p32__A_C_9model1.csv")
result_A_C_3<-result_A_C_3[,-1]

result<-cbind(result_name,result_A_C_3)



#model1 100sample结果
#先对所有氨基酸对预测概率由大到小排序，然后取前800对预测结果
#然后保存预测结果fin_result，第一列是出现ture positive residue pairs排序位置，后面是具体信息
result6<-result
result6<-result6[order(-result6[,10]),]
result6<-result6[1:800,]
flag5<-which(result6[,8]<=l)

pre_res_A_C_100sample_model1<-result6[flag5,]
pre_order<-as.matrix(flag5)
fin_result_A_C<-cbind(pre_order,pre_res_A_C_100sample_model1)
fin_result_A_C<-fin_result_A_C[,-c(9,10,11,12,13)]


write.csv(fin_result_A_C,file='D:/吕艳芬/预测真实复合物/三体/三体文章/fin_result/model1/sample100/fin_1p32_res_A_C_100sample_model1.csv')


