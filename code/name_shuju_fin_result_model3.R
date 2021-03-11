

rm(list=ls())


#对应数据的名字合并到文件result_name
result_A_C_1<-read.csv("D:/吕艳芬/预测真实复合物/三体/三体文章/shuju_name/result_norm_name_1/2ig8__A_C_name_1.csv")
l<-length(result_A_C_1[,4])

result_A_C_2<-read.csv("D:/吕艳芬/预测真实复合物/三体/三体文章/shuju_name/result_norm_name_0/2ig8__A_C_name_0.csv")

#合并名字，lable1上，lable0下
result_name<-rbind(result_A_C_1,result_A_C_2)
result_name<-result_name[,-1]


#采样20,40,60,80,100次结果和数据名字合并放入result文件，前7列是蛋白质名字，链的信息，氨基酸名字和位置
#注意第8列是氨基酸排序，前l行对应ture positive residue pair
#后5列对应的是采样20，40，60，80，100的结果


result_A_C_3<-read.csv("D:/吕艳芬/预测真实复合物/三体/三体文章/9model/model4/2ig8__A_C_9model4.csv")
result_A_C_3<-result_A_C_3[,-1]

result<-cbind(result_name,result_A_C_3)


#model4 20sample结果
#先对所有氨基酸对预测概率由大到小排序，然后取前800对预测结果
#然后保存预测结果fin_result，第一列是出现ture positive residue pairs排序位置，后面是具体信息
result2<-result
result2<-result2[order(-result2[,9]),]
result2<-result2[1:800,]
flag1<-which(result2[,8]<=l)

pre_res_A_C_20sample_model4<-result2[flag1,]
pre_order<-as.matrix(flag1)
fin_result_A_C<-cbind(pre_order,pre_res_A_C_20sample_model4)

write.csv(fin_result_A_C,file='D:/吕艳芬/预测真实复合物/三体/三体文章/fin_result/model4/sample20/fin_2ig8_res_A_C_20sample_model4.csv')

#model4 40sample结果
#先对所有氨基酸对预测概率由大到小排序，然后取前800对预测结果
#然后保存预测结果fin_result，第一列是出现ture positive residue pairs排序位置，后面是具体信息
result3<-result
result3<-result3[order(-result3[,10]),]
result3<-result3[1:800,]
flag2<-which(result3[,8]<=l)

pre_res_A_C_40sample_model4<-result3[flag2,]
pre_order<-as.matrix(flag2)
fin_result_A_C<-cbind(pre_order,pre_res_A_C_40sample_model4)

write.csv(fin_result_A_C,file='D:/吕艳芬/预测真实复合物/三体/三体文章/fin_result/model4/sample40/fin_2ig8_res_A_C_40sample_model4.csv')

#model4 60sample结果
#先对所有氨基酸对预测概率由大到小排序，然后取前800对预测结果
#然后保存预测结果fin_result，第一列是出现ture positive residue pairs排序位置，后面是具体信息
result4<-result
result4<-result4[order(-result4[,10]),]
result4<-result4[1:800,]
flag3<-which(result4[,8]<=l)

pre_res_A_C_60sample_model4<-result4[flag3,]
pre_order<-as.matrix(flag3)
fin_result_A_C<-cbind(pre_order,pre_res_A_C_60sample_model4)

write.csv(fin_result_A_C,file='D:/吕艳芬/预测真实复合物/三体/三体文章/fin_result/model4/sample60/fin_2ig8_res_A_C_60sample_model4.csv')


#model4 80sample结果
#先对所有氨基酸对预测概率由大到小排序，然后取前800对预测结果
#然后保存预测结果fin_result，第一列是出现ture positive residue pairs排序位置，后面是具体信息
result5<-result
result5<-result5[order(-result5[,10]),]
result5<-result5[1:800,]
flag4<-which(result5[,8]<=l)

pre_res_A_C_80sample_model4<-result5[flag4,]
pre_order<-as.matrix(flag4)
fin_result_A_C<-cbind(pre_order,pre_res_A_C_80sample_model4)

write.csv(fin_result_A_C,file='D:/吕艳芬/预测真实复合物/三体/三体文章/fin_result/model4/sample80/fin_2ig8_res_A_C_80sample_model4.csv')



#model4 100sample结果
#先对所有氨基酸对预测概率由大到小排序，然后取前800对预测结果
#然后保存预测结果fin_result，第一列是出现ture positive residue pairs排序位置，后面是具体信息
result6<-result
result6<-result6[order(-result6[,10]),]
result6<-result6[1:800,]
flag5<-which(result6[,8]<=l)

pre_res_A_C_100sample_model4<-result6[flag5,]
pre_order<-as.matrix(flag5)
fin_result_A_C<-cbind(pre_order,pre_res_A_C_100sample_model4)

write.csv(fin_result_A_C,file='D:/吕艳芬/预测真实复合物/三体/三体文章/fin_result/model4/sample100/fin_2ig8_res_A_C_100sample_model4.csv')


