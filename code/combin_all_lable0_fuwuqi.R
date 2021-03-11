rm(list=ls())
#批量读入一个文件夹下的所有csv

setwd("/home/lvyf/15_9features")                                                                    #设定工作目录为D盘
a = list.files("1/")                                                       #list.files命令将result_order文件夹下所有文件名输入a
dir = paste("./1/",a,sep="")                                      #用paste命令构建路径变量dir
n = length(dir)                                                                 #读取dir长度，也就是文件夹下的文件个数
merge.data = read.csv(file = dir[1],header=T,sep=",")   #读入第一个文件内容（可以不用先读一个，但是为了简单，省去定义data.frame的时间，我选择先读入一个文件。
for (i in 2:n){
  new.data = read.csv(file = dir[i], header=T, sep=",")
  merge.data = rbind(merge.data,new.data)
}

#result.data<-merge.data[order(-merge.data$V2),];
#循环从第二个文件开始读入所有文件，并组合到merge.data变量中


write.csv(merge.data,file = "./1/all_lable0.csv",row.names=F)  #输出组合后的文件result_order.csv到result_order文件夹

