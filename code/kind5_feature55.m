
clc;clear
close all
%所有数值按字母顺序排列 A C D E F G H I K L M N P Q R S T V W Y
%求20个氨基酸疏水值的平均值和方差，
%shushui存放20中氨基酸5种特征的原数值，每行代表不同特性，分别是疏水，极化率，极性,二级结构和密码子多样性
%shushui_junzhihua存放的是20中氨基酸均值化后的5种特性数值，每行代表不同的特性，同上




shushui=zeros(5,20);
W1=zeros(5,2);
shushui_junzhihua=zeros(5,20);

%20种氨基酸疏水特性数值
shushui(1,1)=0.62;
shushui(1,2)=0.29;
shushui(1,3)=-0.9;
shushui(1,4)=-0.74;
shushui(1,5)=1.19;
shushui(1,6)=0.48;
shushui(1,7)=-0.4;
shushui(1,8)=1.38;
shushui(1,9)=-1.5;
shushui(1,10)=1.06;
shushui(1,11)=0.64;
shushui(1,12)=-0.78;
shushui(1,13)=0.12;
shushui(1,14)=-0.85;
shushui(1,15)=-2.53;
shushui(1,16)=-0.18;
shushui(1,17)=-0.05;
shushui(1,18)=1.08;
shushui(1,19)=0.81;
shushui(1,20)=0.26;
%均值化处理，减去20氨基酸最小值值除以（最大值-最小值）
%W1(1,1)=min(shushui(1,:));
%W1(1,2)=max(shushui(1,:));
for i=1:20
    shushui_junzhihua(1,i)=shushui(1,i);
end

%20种氨基酸的极化率
shushui(2,1)=0.046;
shushui(2,2)=0.128;
shushui(2,3)=0.105;
shushui(2,4)=0.151;
shushui(2,5)=0.29 ;
shushui(2,6)=0;
shushui(2,7)=0.23;
shushui(2,8)=0.186;
shushui(2,9)=0.219;
shushui(2,10)=0.186;
shushui(2,11)=0.221;
shushui(2,12)=0.134;
shushui(2,13)=0.131;  %已经修改过
shushui(2,14)=0.18;
shushui(2,15)=0.291;
shushui(2,16)=0.062;
shushui(2,17)=0.108;
shushui(2,18)=0.14;
shushui(2,19)=0.409;
shushui(2,20)=0.298;
%W1(2,1)=min(shushui(2,:));
%W1(2,2)=max(shushui(2,:));
for i=1:20
    shushui_junzhihua(2,i)=shushui(2,i);
end





%20种氨基酸极性
shushui(3,1)=8.1;
shushui(3,2)=5.5;
shushui(3,3)=13;
shushui(3,4)=12.3;
shushui(3,5)=5.2;
shushui(3,6)=9;
shushui(3,7)=10.4;
shushui(3,8)=5.2;
shushui(3,9)=11.3;
shushui(3,10)=4.9;
shushui(3,11)=5.7;
shushui(3,12)=11.6;
shushui(3,13)=8;
shushui(3,14)=10.5;
shushui(3,15)=10.5;
shushui(3,16)=9.2;
shushui(3,17)=8;%已经修改过
shushui(3,18)=5.9;
shushui(3,19)=5.4;
shushui(3,20)=6.2;
%W1(3,1)=min(shushui(3,:));
%W1(3,2)=max(shushui(3,:));
for i=1:20
    shushui_junzhihua(3,i)=shushui(3,i);
end






%20种氨基酸的二级结构
shushui(4,1)=-1.302;
shushui(4,2)=0.465;
shushui(4,3)=0.302;
shushui(4,4)=-1.453;
shushui(4,5)=-0.59;
shushui(4,6)=1.652;
shushui(4,7)=-0.417;
shushui(4,8)=-0.547;
shushui(4,9)=-0.561;
shushui(4,10)=-0.987;
shushui(4,11)=-1.524;
shushui(4,12)=0.828;
shushui(4,13)=2.081;
shushui(4,14)=-0.179;
shushui(4,15)=-0.055;
shushui(4,16)=1.399;
shushui(4,17)=0.326;
shushui(4,18)=-0.279;
shushui(4,19)=0.009;
shushui(4,20)=0.83;


%W1(4,1)=min(shushui(4,:));
%W1(4,2)=max(shushui(4,:));
for i=1:20
    shushui_junzhihua(4,i)=shushui(4,i);
end



%20种氨基酸的密码子多样性

shushui(5,1)=1.57;
shushui(5,2)=-1.02;
shushui(5,3)=-0.259;
shushui(5,4)=0.113;
shushui(5,5)=-0.397;
shushui(5,6)=1.045;
shushui(5,7)=-1.474;
shushui(5,8)=0.393;
shushui(5,9)=-0.277;
shushui(5,10)=1.266;
shushui(5,11)=-1.005;
shushui(5,12)=-0.169;
shushui(5,13)=0.421;
shushui(5,14)=-0.503;
shushui(5,15)=0.44;
shushui(5,16)=0.67;
shushui(5,17)=0.908;
shushui(5,18)=1.242;
shushui(5,19)=-2.128;
shushui(5,20)=-0.838;


%W1(5,1)=min(shushui(5,:));
%W1(5,2)=max(shushui(5,:));
for i=1:20
    shushui_junzhihua(5,i)=shushui(5,i);
end













file_path = ('D:/吕艳芬/预测真实复合物/四体/1');%文件存储路径
data_path_list=dir(strcat('D:/吕艳芬/预测真实复合物/四体/1','*.fasta'));%获取当前目录下所有.fasta文件
fprintf('ok3')
%fprintf('%d',data_path_list)
data_num = length(data_path_list);%获取文件数目
fprintf('%d',data_num)
if data_num > 0 %判断全部文件个数
    fprintf('ok5')
end
    for pn = 1:data_num %循环读取文件
        fprintf('ok6')
        data_name = data_path_list(pn).name; %获取文件名
        fprintf(data_name)
        data_origin = importdata(strcat(file_path,'/',data_name)); %读取文件
        fprintf('%d %s\n',pn, strcat(file_path,data_name));%输出当前读取文件名
        %N = data(data_origin)%?惧??澶????芥??
        format long
        syms clc
        l=data_origin; % 文件数据转移，下文中所有l都用data_origin代替，为了免去改下文变量的麻烦，我直接数据重新赋值
      
      
        t=1;
        Sequence=l{t};
        n=length(Sequence);
        xulie_1=zeros(5,n);
       
        for i=1:n
           if Sequence(i)=='A'
              xulie_1(1,i)=shushui_junzhihua(1,1);
              xulie_1(2,i)=shushui_junzhihua(2,1);
              xulie_1(3,i)=shushui_junzhihua(3,1);
              xulie_1(4,i)=shushui_junzhihua(4,1);        
              xulie_1(5,i)=shushui_junzhihua(5,1);

              elseif Sequence(i)=='C'
              xulie_1(1,i)=shushui_junzhihua(1,2);
              xulie_1(2,i)=shushui_junzhihua(2,2);
              xulie_1(3,i)=shushui_junzhihua(3,2);
              xulie_1(4,i)=shushui_junzhihua(4,2);        
              xulie_1(5,i)=shushui_junzhihua(5,2);

              elseif Sequence(i)=='D'
              xulie_1(1,i)=shushui_junzhihua(1,3);
              xulie_1(2,i)=shushui_junzhihua(2,3);
              xulie_1(3,i)=shushui_junzhihua(3,3);
              xulie_1(4,i)=shushui_junzhihua(4,3);        
              xulie_1(5,i)=shushui_junzhihua(5,3);

              elseif Sequence(i)=='E'
              xulie_1(1,i)=shushui_junzhihua(1,4);
              xulie_1(2,i)=shushui_junzhihua(2,4);
              xulie_1(3,i)=shushui_junzhihua(3,4);
              xulie_1(4,i)=shushui_junzhihua(4,4);        
              xulie_1(5,i)=shushui_junzhihua(5,4);

              elseif Sequence(i)=='F'
              xulie_1(1,i)=shushui_junzhihua(1,5);
              xulie_1(2,i)=shushui_junzhihua(2,5);
              xulie_1(3,i)=shushui_junzhihua(3,5);
              xulie_1(4,i)=shushui_junzhihua(4,5);        
              xulie_1(5,i)=shushui_junzhihua(5,5);

              elseif Sequence(i)=='G'
              xulie_1(1,i)=shushui_junzhihua(1,6);
              xulie_1(2,i)=shushui_junzhihua(2,6);
              xulie_1(3,i)=shushui_junzhihua(3,6);
              xulie_1(4,i)=shushui_junzhihua(4,6);        
              xulie_1(5,i)=shushui_junzhihua(5,6);

              elseif Sequence(i)=='H'
              xulie_1(1,i)=shushui_junzhihua(1,7);
              xulie_1(2,i)=shushui_junzhihua(2,7);
              xulie_1(3,i)=shushui_junzhihua(3,7);
              xulie_1(4,i)=shushui_junzhihua(4,7);        
              xulie_1(5,i)=shushui_junzhihua(5,7);

              elseif Sequence(i)=='I'
              xulie_1(1,i)=shushui_junzhihua(1,8);
              xulie_1(2,i)=shushui_junzhihua(2,8);
              xulie_1(3,i)=shushui_junzhihua(3,8);
              xulie_1(4,i)=shushui_junzhihua(4,8);        
              xulie_1(5,i)=shushui_junzhihua(5,8);

              elseif Sequence(i)=='K'
              xulie_1(1,i)=shushui_junzhihua(1,9);
              xulie_1(2,i)=shushui_junzhihua(2,9);
              xulie_1(3,i)=shushui_junzhihua(3,9);
              xulie_1(4,i)=shushui_junzhihua(4,9);        
              xulie_1(5,i)=shushui_junzhihua(5,9);

              elseif Sequence(i)=='L'
              xulie_1(1,i)=shushui_junzhihua(1,10);
              xulie_1(2,i)=shushui_junzhihua(2,10);
              xulie_1(3,i)=shushui_junzhihua(3,10);
              xulie_1(4,i)=shushui_junzhihua(4,10);        
              xulie_1(5,i)=shushui_junzhihua(5,10);

              elseif Sequence(i)=='M'
              xulie_1(1,i)=shushui_junzhihua(1,11);
              xulie_1(2,i)=shushui_junzhihua(2,11);
              xulie_1(3,i)=shushui_junzhihua(3,11);
              xulie_1(4,i)=shushui_junzhihua(4,11);        
              xulie_1(5,i)=shushui_junzhihua(5,11);

              elseif Sequence(i)=='N'
              xulie_1(1,i)=shushui_junzhihua(1,12);
              xulie_1(2,i)=shushui_junzhihua(2,12);
              xulie_1(3,i)=shushui_junzhihua(3,12);
              xulie_1(4,i)=shushui_junzhihua(4,12);        
              xulie_1(5,i)=shushui_junzhihua(5,12);

              elseif Sequence(i)=='P'
              xulie_1(1,i)=shushui_junzhihua(1,13);
              xulie_1(2,i)=shushui_junzhihua(2,13);
              xulie_1(3,i)=shushui_junzhihua(3,13);
              xulie_1(4,i)=shushui_junzhihua(4,13);        
              xulie_1(5,i)=shushui_junzhihua(5,13);

              elseif Sequence(i)=='Q'
              xulie_1(1,i)=shushui_junzhihua(1,14);
              xulie_1(2,i)=shushui_junzhihua(2,14);
              xulie_1(3,i)=shushui_junzhihua(3,14);
              xulie_1(4,i)=shushui_junzhihua(4,14);        
              xulie_1(5,i)=shushui_junzhihua(5,14);

              elseif Sequence(i)=='R'
              xulie_1(1,i)=shushui_junzhihua(1,15);
              xulie_1(2,i)=shushui_junzhihua(2,15);
              xulie_1(3,i)=shushui_junzhihua(3,15);
              xulie_1(4,i)=shushui_junzhihua(4,15);        
              xulie_1(5,i)=shushui_junzhihua(5,15);

              elseif Sequence(i)=='S'
              xulie_1(1,i)=shushui_junzhihua(1,16);
              xulie_1(2,i)=shushui_junzhihua(2,16);
              xulie_1(3,i)=shushui_junzhihua(3,16);
              xulie_1(4,i)=shushui_junzhihua(4,16);        
              xulie_1(5,i)=shushui_junzhihua(5,16);

              elseif Sequence(i)=='T'
              xulie_1(1,i)=shushui_junzhihua(1,17);
              xulie_1(2,i)=shushui_junzhihua(2,17);
              xulie_1(3,i)=shushui_junzhihua(3,17);
              xulie_1(4,i)=shushui_junzhihua(4,17);        
              xulie_1(5,i)=shushui_junzhihua(5,17);

              elseif Sequence(i)=='V'
              xulie_1(1,i)=shushui_junzhihua(1,18);
              xulie_1(2,i)=shushui_junzhihua(2,18);
              xulie_1(3,i)=shushui_junzhihua(3,18);
              xulie_1(4,i)=shushui_junzhihua(4,18);        
              xulie_1(5,i)=shushui_junzhihua(5,18);

              elseif Sequence(i)=='W'
              xulie_1(1,i)=shushui_junzhihua(1,19);
              xulie_1(2,i)=shushui_junzhihua(2,19);
              xulie_1(3,i)=shushui_junzhihua(3,19);
              xulie_1(4,i)=shushui_junzhihua(4,19);        
              xulie_1(5,i)=shushui_junzhihua(5,19);

              elseif Sequence(i)=='Y'
              xulie_1(1,i)=shushui_junzhihua(1,20);
              xulie_1(2,i)=shushui_junzhihua(2,20);
              xulie_1(3,i)=shushui_junzhihua(3,20);
              xulie_1(4,i)=shushui_junzhihua(4,20);        
              xulie_1(5,i)=shushui_junzhihua(5,20);
 
    end
        end
 
        
        %求第一条链，5种特征的氨基酸k间隔因子，特征顺序同上，共55维
        %针对每个氨基酸计算11个特征，第一个特征是本身，第二个特征是，该氨基酸乘以上或者下一个的/间隔。
        %对于开始5和后5个氨基酸进行了特殊处理
        %方法二，把氨基酸序列看出一个环状的，后的不够的在从前后缀后面开始加够。
       
        
       
        P1=zeros(n,55);
        P1(:,1) =xulie_1(1,:);
        P1(:,12)=xulie_1(2,:);
        P1(:,23)=xulie_1(3,:);
        P1(:,34)=xulie_1(4,:);
        P1(:,45)=xulie_1(5,:);

   %第一种特性
   % R6,R5,R4,R3,R2,R1,R7,R8,R9,R10,R11特征按这种顺序排卵     
        for j= 6:(n-5)           
            for jj=1:5
                P1(j,(1+jj))=(xulie_1(1,j)*xulie_1(1,(j-jj)))/jj;
                P1(j,(6+jj))=(xulie_1(1,j)*xulie_1(1,(j+jj)))/jj;
            end
        end
        
        
        
        %方法一特殊处理前5个和后5个位置（第一个性质）

        %1位置
        P1(1,2)=(xulie_1(1,1)*xulie_1(1,n))/1;
        P1(1,3)=(xulie_1(1,1)*xulie_1(1,(n-1)))/2;
        P1(1,4)=(xulie_1(1,1)*xulie_1(1,(n-2)))/3;
        P1(1,5)=(xulie_1(1,1)*xulie_1(1,(n-3)))/4;
        P1(1,6)=(xulie_1(1,1)*xulie_1(1,(n-4)))/5;
         
        for j= 1:1          
            for jj=1:5
                P1(j,(6+jj))=(xulie_1(1,j)*xulie_1(1,(j+jj)))/jj;
            end
        end    
        
        %2位置
        P1(2,2)=(xulie_1(1,2)*xulie_1(1,1))/1;
        P1(2,3)=(xulie_1(1,2)*xulie_1(1,n))/2;
        P1(2,4)=(xulie_1(1,2)*xulie_1(1,(n-1)))/3;
        P1(2,5)=(xulie_1(1,2)*xulie_1(1,(n-2)))/4;
        P1(2,6)=(xulie_1(1,2)*xulie_1(1,(n-3)))/5;
        for j= 2:2          
            for jj=1:5
                P1(j,(6+jj))=(xulie_1(1,j)*xulie_1(1,(j+jj)))/jj;
            end
        end   
        
        
        %3位置
        P1(3,2)=(xulie_1(1,3)*xulie_1(1,2))/1;
        P1(3,3)=(xulie_1(1,3)*xulie_1(1,1))/2;
        P1(3,4)=(xulie_1(1,3)*xulie_1(1,n))/3;
        P1(3,5)=(xulie_1(1,3)*xulie_1(1,(n-1)))/4;
        P1(3,6)=(xulie_1(1,3)*xulie_1(1,(n-2)))/5;
        for j= 3:3          
            for jj=1:5
                P1(j,(6+jj))=(xulie_1(1,j)*xulie_1(1,(j+jj)))/jj;
            end
        end 
        
        %4位置
        P1(4,2)=(xulie_1(1,4)*xulie_1(1,3))/1;
        P1(4,3)=(xulie_1(1,4)*xulie_1(1,2))/2;
        P1(4,4)=(xulie_1(1,4)*xulie_1(1,1))/3;
        P1(4,5)=(xulie_1(1,4)*xulie_1(1,n))/4;
        P1(4,6)=(xulie_1(1,4)*xulie_1(1,(n-1)))/5;
        for j= 4:4         
            for jj=1:5
                P1(j,(6+jj))=(xulie_1(1,j)*xulie_1(1,(j+jj)))/jj;
            end
        end     
        
        
        %5位置
        P1(5,2)=(xulie_1(1,5)*xulie_1(1,4))/1;
        P1(5,3)=(xulie_1(1,5)*xulie_1(1,3))/2;
        P1(5,4)=(xulie_1(1,5)*xulie_1(1,2))/3;
        P1(5,5)=(xulie_1(1,5)*xulie_1(1,1))/4;
        P1(5,6)=(xulie_1(1,5)*xulie_1(1,n))/5;
        for j= 5:5         
            for jj=1:5
                P1(j,(6+jj))=(xulie_1(1,j)*xulie_1(1,(j+jj)))/jj;
            end
        end     
           
        %(n-4)位置
        P1((n-4),7)=(xulie_1(1,(n-4))*xulie_1(1,(n-3)))/1;
        P1((n-4),8)=(xulie_1(1,(n-4))*xulie_1(1,(n-2)))/2;
        P1((n-4),9)=(xulie_1(1,(n-4))*xulie_1(1,(n-1)))/3;
        P1((n-4),10)=(xulie_1(1,(n-4))*xulie_1(1,n))/4;
        P1((n-4),11)=(xulie_1(1,(n-4))*xulie_1(1,1))/5;
        for j= (n-4):(n-4)        
            for jj=1:5
                P1(j,(1+jj))=(xulie_1(1,j)*xulie_1(1,(j-jj)))/jj;
            end
        end  
        
        %(n-3)位置
        P1((n-3),7)=(xulie_1(1,(n-3))*xulie_1(1,(n-2)))/1;
        P1((n-3),8)=(xulie_1(1,(n-3))*xulie_1(1,(n-1)))/2;
        P1((n-3),9)=(xulie_1(1,(n-3))*xulie_1(1,n))/3;
        P1((n-3),10)=(xulie_1(1,(n-3))*xulie_1(1,1))/4;
        P1((n-3),11)=(xulie_1(1,(n-3))*xulie_1(1,2))/5;
        for j= (n-3):(n-3)        
            for jj=1:5
                P1(j,(1+jj))=(xulie_1(1,j)*xulie_1(1,(j-jj)))/jj;
            end
        end     
        
        %(n-2)位置
        P1((n-2),7)=(xulie_1(1,(n-2))*xulie_1(1,(n-1)))/1;
        P1((n-2),8)=(xulie_1(1,(n-2))*xulie_1(1,n))/2;
        P1((n-2),9)=(xulie_1(1,(n-2))*xulie_1(1,1))/3;
        P1((n-2),10)=(xulie_1(1,(n-2))*xulie_1(1,2))/4;
        P1((n-2),11)=(xulie_1(1,(n-2))*xulie_1(1,3))/5;
        for j= (n-2):(n-2)        
            for jj=1:5
                P1(j,(1+jj))=(xulie_1(1,j)*xulie_1(1,(j-jj)))/jj;
            end
        end      
  
        %(n-1)位置
        P1((n-1),7)=(xulie_1(1,(n-1))*xulie_1(1,n))/1;
        P1((n-1),8)=(xulie_1(1,(n-1))*xulie_1(1,1))/2;
        P1((n-1),9)=(xulie_1(1,(n-1))*xulie_1(1,2))/3;
        P1((n-1),10)=(xulie_1(1,(n-1))*xulie_1(1,3))/4;
        P1((n-1),11)=(xulie_1(1,(n-1))*xulie_1(1,4))/5;
        for j= (n-1):(n-1)        
            for jj=1:5
                P1(j,(1+jj))=(xulie_1(1,j)*xulie_1(1,(j-jj)))/jj;
            end
        end   
        
        
        %n位置
        P1(n,7)=(xulie_1(1,n)*xulie_1(1,1))/1;
        P1(n,8)=(xulie_1(1,n)*xulie_1(1,2))/2;
        P1(n,9)=(xulie_1(1,n)*xulie_1(1,3))/3;
        P1(n,10)=(xulie_1(1,n)*xulie_1(1,4))/4;
        P1(n,11)=(xulie_1(1,n)*xulie_1(1,5))/5;
        for j= n:n       
            for jj=1:5
                P1(j,(1+jj))=(xulie_1(1,j)*xulie_1(1,(j-jj)))/jj;
            end
        end   
        

      %第二种性质  
      % R6,R5,R4,R3,R2,R1,R7,R8,R9,R10,R11特征按这种顺序排卵     
        for j= 6:(n-5)           
            for jj=1:5
                P1(j,(12+jj))=(xulie_1(2,j)*xulie_1(2,(j-jj)))/jj;
                P1(j,(17+jj))=(xulie_1(2,j)*xulie_1(2,(j+jj)))/jj;
            end
        end
        
        
        
        %方法一特殊处理前5个和后5个位置（第一个性质）

        %1位置
        P1(1,13)=(xulie_1(2,1)*xulie_1(2,n))/1;
        P1(1,14)=(xulie_1(2,1)*xulie_1(2,(n-1)))/2;
        P1(1,15)=(xulie_1(2,1)*xulie_1(2,(n-2)))/3;
        P1(1,16)=(xulie_1(2,1)*xulie_1(2,(n-3)))/4;
        P1(1,17)=(xulie_1(2,1)*xulie_1(2,(n-4)))/5;
         
        for j= 1:1          
            for jj=1:5
                P1(j,(17+jj))=(xulie_1(2,j)*xulie_1(2,(j+jj)))/jj;
            end
        end    
        


        %2位置
        P1(2,13)=(xulie_1(2,2)*xulie_1(2,1))/1;
        P1(2,14)=(xulie_1(2,2)*xulie_1(2,n))/2;
        P1(2,15)=(xulie_1(2,2)*xulie_1(2,(n-1)))/3;
        P1(2,16)=(xulie_1(2,2)*xulie_1(2,(n-2)))/4;
        P1(2,17)=(xulie_1(2,2)*xulie_1(2,(n-3)))/5;
        for j= 2:2          
            for jj=1:5
                P1(j,(17+jj))=(xulie_1(2,j)*xulie_1(2,(j+jj)))/jj;
            end
        end   
        
        
        %3位置
        P1(3,13)=(xulie_1(2,3)*xulie_1(2,2))/1;
        P1(3,14)=(xulie_1(2,3)*xulie_1(2,1))/2;
        P1(3,15)=(xulie_1(2,3)*xulie_1(2,n))/3;
        P1(3,16)=(xulie_1(2,3)*xulie_1(2,(n-1)))/4;
        P1(3,17)=(xulie_1(2,3)*xulie_1(2,(n-2)))/5;
        for j= 3:3          
            for jj=1:5
                P1(j,(17+jj))=(xulie_1(2,j)*xulie_1(2,(j+jj)))/jj;
            end
        end 
        
        %4位置
        P1(4,13)=(xulie_1(2,4)*xulie_1(2,3))/1;
        P1(4,14)=(xulie_1(2,4)*xulie_1(2,2))/2;
        P1(4,15)=(xulie_1(2,4)*xulie_1(2,1))/3;
        P1(4,16)=(xulie_1(2,4)*xulie_1(2,n))/4;
        P1(4,17)=(xulie_1(2,4)*xulie_1(2,(n-1)))/5;
        for j= 4:4         
            for jj=1:5
                P1(j,(17+jj))=(xulie_1(2,j)*xulie_1(2,(j+jj)))/jj;
            end
        end     
        
        
        %5位置
        P1(5,13)=(xulie_1(2,5)*xulie_1(2,4))/1;
        P1(5,14)=(xulie_1(2,5)*xulie_1(2,3))/2;
        P1(5,15)=(xulie_1(2,5)*xulie_1(2,2))/3;
        P1(5,16)=(xulie_1(2,5)*xulie_1(2,1))/4;
        P1(5,17)=(xulie_1(2,5)*xulie_1(2,n))/5;
        for j= 5:5         
            for jj=1:5
                P1(j,(17+jj))=(xulie_1(2,j)*xulie_1(2,(j+jj)))/jj;
            end
        end     
           
        %(n-4)位置
        P1((n-4),18)=(xulie_1(2,(n-4))*xulie_1(2,(n-3)))/1;
        P1((n-4),19)=(xulie_1(2,(n-4))*xulie_1(2,(n-2)))/2;
        P1((n-4),20)=(xulie_1(2,(n-4))*xulie_1(2,(n-1)))/3;
        P1((n-4),21)=(xulie_1(2,(n-4))*xulie_1(2,n))/4;
        P1((n-4),22)=(xulie_1(2,(n-4))*xulie_1(2,1))/5;
        for j= (n-4):(n-4)        
            for jj=1:5
                P1(j,(12+jj))=(xulie_1(2,j)*xulie_1(2,(j-jj)))/jj;
            end
        end  
        
        %(n-3)位置
        P1((n-3),18)=(xulie_1(2,(n-3))*xulie_1(2,(n-2)))/1;
        P1((n-3),19)=(xulie_1(2,(n-3))*xulie_1(2,(n-1)))/2;
        P1((n-3),20)=(xulie_1(2,(n-3))*xulie_1(2,n))/3;
        P1((n-3),21)=(xulie_1(2,(n-3))*xulie_1(2,1))/4;
        P1((n-3),22)=(xulie_1(2,(n-3))*xulie_1(2,2))/5;
        for j= (n-3):(n-3)        
            for jj=1:5
                P1(j,(12+jj))=(xulie_1(2,j)*xulie_1(2,(j-jj)))/jj;
            end
        end     
        
        %(n-2)位置
        P1((n-2),18)=(xulie_1(2,(n-2))*xulie_1(2,(n-1)))/1;
        P1((n-2),19)=(xulie_1(2,(n-2))*xulie_1(2,n))/2;
        P1((n-2),20)=(xulie_1(2,(n-2))*xulie_1(2,1))/3;
        P1((n-2),21)=(xulie_1(2,(n-2))*xulie_1(2,2))/4;
        P1((n-2),22)=(xulie_1(2,(n-2))*xulie_1(2,3))/5;
        for j= (n-2):(n-2)        
            for jj=1:5
                P1(j,(12+jj))=(xulie_1(2,j)*xulie_1(2,(j-jj)))/jj;
            end
        end      
  
        %(n-1)位置
        P1((n-1),18)=(xulie_1(2,(n-1))*xulie_1(2,n))/1;
        P1((n-1),19)=(xulie_1(2,(n-1))*xulie_1(2,1))/2;
        P1((n-1),20)=(xulie_1(2,(n-1))*xulie_1(2,2))/3;
        P1((n-1),21)=(xulie_1(2,(n-1))*xulie_1(2,3))/4;
        P1((n-1),22)=(xulie_1(2,(n-1))*xulie_1(2,4))/5;
        for j= (n-1):(n-1)        
            for jj=1:5
                P1(j,(12+jj))=(xulie_1(2,j)*xulie_1(2,(j-jj)))/jj;
            end
        end   




        %n位置
        P1(n,18)=(xulie_1(2,n)*xulie_1(2,1))/1;
        P1(n,19)=(xulie_1(2,n)*xulie_1(2,2))/2;
        P1(n,20)=(xulie_1(2,n)*xulie_1(2,3))/3;
        P1(n,21)=(xulie_1(2,n)*xulie_1(2,4))/4;
        P1(n,22)=(xulie_1(2,n)*xulie_1(2,5))/5;
        for j= n:n       
            for jj=1:5
                P1(j,(12+jj))=(xulie_1(2,j)*xulie_1(2,(j-jj)))/jj;
            end
        end   
          
        
        
        
        

       %第三种特征 
       % R6,R5,R4,R3,R3,R1,R7,R8,R9,R10,R11特征按这种顺序排卵     
        for j= 6:(n-5)           
            for jj=1:5
                P1(j,(23+jj))=(xulie_1(3,j)*xulie_1(3,(j-jj)))/jj;
                P1(j,(29+jj))=(xulie_1(3,j)*xulie_1(3,(j+jj)))/jj;
            end
        end
        
        
        
        %方法一特殊处理前5个和后5个位置（第一个性质）

        %1位置
        P1(1,24)=(xulie_1(3,1)*xulie_1(3,n))/1;
        P1(1,25)=(xulie_1(3,1)*xulie_1(3,(n-1)))/2;
        P1(1,26)=(xulie_1(3,1)*xulie_1(3,(n-2)))/3;
        P1(1,27)=(xulie_1(3,1)*xulie_1(3,(n-3)))/4;
        P1(1,28)=(xulie_1(3,1)*xulie_1(3,(n-4)))/5;
         
        for j= 1:1          
            for jj=1:5
                P1(j,(28+jj))=(xulie_1(3,j)*xulie_1(3,(j+jj)))/jj;
            end
        end    
        


        %2位置
        P1(3,24)=(xulie_1(3,2)*xulie_1(3,1))/1;
        P1(3,25)=(xulie_1(3,2)*xulie_1(3,n))/2;
        P1(3,26)=(xulie_1(3,2)*xulie_1(3,(n-1)))/3;
        P1(3,27)=(xulie_1(3,2)*xulie_1(3,(n-2)))/4;
        P1(3,28)=(xulie_1(3,2)*xulie_1(3,(n-3)))/5;
        for j= 2:2          
            for jj=1:5
                P1(j,(28+jj))=(xulie_1(3,j)*xulie_1(3,(j+jj)))/jj;
            end
        end   
        
        
        %3位置
        P1(3,24)=(xulie_1(3,3)*xulie_1(3,2))/1;
        P1(3,25)=(xulie_1(3,3)*xulie_1(3,1))/2;
        P1(3,26)=(xulie_1(3,3)*xulie_1(3,n))/3;
        P1(3,27)=(xulie_1(3,3)*xulie_1(3,(n-1)))/4;
        P1(3,28)=(xulie_1(3,3)*xulie_1(3,(n-2)))/5;
        for j= 3:3          
            for jj=1:5
                P1(j,(28+jj))=(xulie_1(3,j)*xulie_1(3,(j+jj)))/jj;
            end
        end 
        
        %4位置
        P1(4,24)=(xulie_1(3,4)*xulie_1(3,3))/1;
        P1(4,25)=(xulie_1(3,4)*xulie_1(3,2))/2;
        P1(4,26)=(xulie_1(3,4)*xulie_1(3,1))/3;
        P1(4,27)=(xulie_1(3,4)*xulie_1(3,n))/4;
        P1(4,28)=(xulie_1(3,4)*xulie_1(3,(n-1)))/5;
        for j= 4:4         
            for jj=1:5
                P1(j,(28+jj))=(xulie_1(3,j)*xulie_1(3,(j+jj)))/jj;
            end
        end     
        
        
        %5位置
        P1(5,24)=(xulie_1(3,5)*xulie_1(3,4))/1;
        P1(5,25)=(xulie_1(3,5)*xulie_1(3,3))/2;
        P1(5,26)=(xulie_1(3,5)*xulie_1(3,2))/3;
        P1(5,27)=(xulie_1(3,5)*xulie_1(3,1))/4;
        P1(5,28)=(xulie_1(3,5)*xulie_1(3,n))/5;
        for j= 5:5         
            for jj=1:5
                P1(j,(28+jj))=(xulie_1(3,j)*xulie_1(3,(j+jj)))/jj;
            end
        end     
           
        %(n-4)位置
        P1((n-4),29)=(xulie_1(3,(n-4))*xulie_1(3,(n-3)))/1;
        P1((n-4),30)=(xulie_1(3,(n-4))*xulie_1(3,(n-2)))/2;
        P1((n-4),31)=(xulie_1(3,(n-4))*xulie_1(3,(n-1)))/3;
        P1((n-4),32)=(xulie_1(3,(n-4))*xulie_1(3,n))/4;
        P1((n-4),33)=(xulie_1(3,(n-4))*xulie_1(3,1))/5;
        for j= (n-4):(n-4)        
            for jj=1:5
                P1(j,(23+jj))=(xulie_1(3,j)*xulie_1(3,(j-jj)))/jj;
            end
        end  
        
        %(n-3)位置
        P1((n-3),29)=(xulie_1(3,(n-3))*xulie_1(3,(n-2)))/1;
        P1((n-3),30)=(xulie_1(3,(n-3))*xulie_1(3,(n-1)))/2;
        P1((n-3),31)=(xulie_1(3,(n-3))*xulie_1(3,n))/3;
        P1((n-3),32)=(xulie_1(3,(n-3))*xulie_1(3,1))/4;
        P1((n-3),33)=(xulie_1(3,(n-3))*xulie_1(3,2))/5;
        for j= (n-3):(n-3)        
            for jj=1:5
                P1(j,(23+jj))=(xulie_1(3,j)*xulie_1(3,(j-jj)))/jj;
            end
        end     
        
        %(n-2)位置
        P1((n-2),29)=(xulie_1(3,(n-2))*xulie_1(3,(n-1)))/1;
        P1((n-2),30)=(xulie_1(3,(n-2))*xulie_1(3,n))/2;
        P1((n-2),31)=(xulie_1(3,(n-2))*xulie_1(3,1))/3;
        P1((n-2),32)=(xulie_1(3,(n-2))*xulie_1(3,2))/4;
        P1((n-2),33)=(xulie_1(3,(n-2))*xulie_1(3,3))/5;
        for j= (n-2):(n-2)        
            for jj=1:5
                P1(j,(23+jj))=(xulie_1(3,j)*xulie_1(3,(j-jj)))/jj;
            end
        end      
  
        %(n-1)位置
        P1((n-1),29)=(xulie_1(3,(n-1))*xulie_1(3,n))/1;
        P1((n-1),30)=(xulie_1(3,(n-1))*xulie_1(3,1))/2;
        P1((n-1),31)=(xulie_1(3,(n-1))*xulie_1(3,2))/3;
        P1((n-1),32)=(xulie_1(3,(n-1))*xulie_1(3,3))/4;
        P1((n-1),33)=(xulie_1(3,(n-1))*xulie_1(3,4))/5;
        for j= (n-1):(n-1)        
            for jj=1:5
                P1(j,(23+jj))=(xulie_1(3,j)*xulie_1(3,(j-jj)))/jj;
            end
        end   




        %n位置
        P1(n,29)=(xulie_1(3,n)*xulie_1(3,1))/1;
        P1(n,30)=(xulie_1(3,n)*xulie_1(3,2))/2;
        P1(n,31)=(xulie_1(3,n)*xulie_1(3,3))/3;
        P1(n,32)=(xulie_1(3,n)*xulie_1(3,4))/4;
        P1(n,33)=(xulie_1(3,n)*xulie_1(3,5))/5;
        for j= n:n       
            for jj=1:5
                P1(j,(23+jj))=(xulie_1(3,j)*xulie_1(3,(j-jj)))/jj;
            end
        end   
         
        
        

     %第四种特性
     % R6,R5,R4,R4,R4,R1,R7,R8,R9,R10,R11特征按这种顺序排卵     
        for j= 6:(n-5)           
            for jj=1:5
                P1(j,(34+jj))=(xulie_1(4,j)*xulie_1(4,(j-jj)))/jj;
                P1(j,(39+jj))=(xulie_1(4,j)*xulie_1(4,(j+jj)))/jj;
            end
        end
        
        
        
        %方法一特殊处理前5个和后5个位置（第一个性质）

        %1位置
        P1(1,35)=(xulie_1(4,1)*xulie_1(4,n))/1;
        P1(1,36)=(xulie_1(4,1)*xulie_1(4,(n-1)))/2;
        P1(1,37)=(xulie_1(4,1)*xulie_1(4,(n-2)))/3;
        P1(1,38)=(xulie_1(4,1)*xulie_1(4,(n-3)))/4;
        P1(1,39)=(xulie_1(4,1)*xulie_1(4,(n-4)))/5;
         
        for j= 1:1          
            for jj=1:5
                P1(j,(39+jj))=(xulie_1(4,j)*xulie_1(4,(j+jj)))/jj;
            end
        end    
        


        %2位置
        P1(4,35)=(xulie_1(4,2)*xulie_1(4,1))/1;
        P1(4,36)=(xulie_1(4,2)*xulie_1(4,n))/2;
        P1(4,37)=(xulie_1(4,2)*xulie_1(4,(n-1)))/3;
        P1(4,38)=(xulie_1(4,2)*xulie_1(4,(n-2)))/4;
        P1(4,39)=(xulie_1(4,2)*xulie_1(4,(n-3)))/5;
        for j= 2:2          
            for jj=1:5
                P1(j,(39+jj))=(xulie_1(4,j)*xulie_1(4,(j+jj)))/jj;
            end
        end   
        
        
        %3位置
        P1(4,35)=(xulie_1(4,3)*xulie_1(4,2))/1;
        P1(4,36)=(xulie_1(4,3)*xulie_1(4,1))/2;
        P1(4,37)=(xulie_1(4,3)*xulie_1(4,n))/3;
        P1(4,38)=(xulie_1(4,3)*xulie_1(4,(n-1)))/4;
        P1(4,39)=(xulie_1(4,3)*xulie_1(4,(n-2)))/5;
        for j= 3:3          
            for jj=1:5
                P1(j,(39+jj))=(xulie_1(4,j)*xulie_1(4,(j+jj)))/jj;
            end
        end 
        
        %4位置
        P1(4,35)=(xulie_1(4,4)*xulie_1(4,3))/1;
        P1(4,36)=(xulie_1(4,4)*xulie_1(4,2))/2;
        P1(4,37)=(xulie_1(4,4)*xulie_1(4,1))/3;
        P1(4,38)=(xulie_1(4,4)*xulie_1(4,n))/4;
        P1(4,39)=(xulie_1(4,4)*xulie_1(4,(n-1)))/5;
        for j= 4:4         
            for jj=1:5
                P1(j,(39+jj))=(xulie_1(4,j)*xulie_1(4,(j+jj)))/jj;
            end
        end     
        
        
        %5位置
        P1(5,35)=(xulie_1(4,5)*xulie_1(4,4))/1;
        P1(5,36)=(xulie_1(4,5)*xulie_1(4,3))/2;
        P1(5,37)=(xulie_1(4,5)*xulie_1(4,2))/3;
        P1(5,38)=(xulie_1(4,5)*xulie_1(4,1))/4;
        P1(5,39)=(xulie_1(4,5)*xulie_1(4,n))/5;
        for j= 5:5         
            for jj=1:5
                P1(j,(39+jj))=(xulie_1(4,j)*xulie_1(4,(j+jj)))/jj;
            end
        end     
           
        %(n-4)位置
        P1((n-4),40)=(xulie_1(4,(n-4))*xulie_1(4,(n-3)))/1;
        P1((n-4),41)=(xulie_1(4,(n-4))*xulie_1(4,(n-2)))/2;
        P1((n-4),42)=(xulie_1(4,(n-4))*xulie_1(4,(n-1)))/3;
        P1((n-4),43)=(xulie_1(4,(n-4))*xulie_1(4,n))/4;
        P1((n-4),44)=(xulie_1(4,(n-4))*xulie_1(4,1))/5;
        for j= (n-4):(n-4)        
            for jj=1:5
                P1(j,(34+jj))=(xulie_1(4,j)*xulie_1(4,(j-jj)))/jj;
            end
        end  
        
        %(n-3)位置
        P1((n-3),40)=(xulie_1(4,(n-3))*xulie_1(4,(n-2)))/1;
        P1((n-3),41)=(xulie_1(4,(n-3))*xulie_1(4,(n-1)))/2;
        P1((n-3),42)=(xulie_1(4,(n-3))*xulie_1(4,n))/3;
        P1((n-3),43)=(xulie_1(4,(n-3))*xulie_1(4,1))/4;
        P1((n-3),44)=(xulie_1(4,(n-3))*xulie_1(4,2))/5;
        for j= (n-3):(n-3)        
            for jj=1:5
                P1(j,(34+jj))=(xulie_1(4,j)*xulie_1(4,(j-jj)))/jj;
            end
        end     
        
        %(n-2)位置
        P1((n-2),40)=(xulie_1(4,(n-2))*xulie_1(4,(n-1)))/1;
        P1((n-2),41)=(xulie_1(4,(n-2))*xulie_1(4,n))/2;
        P1((n-2),42)=(xulie_1(4,(n-2))*xulie_1(4,1))/3;
        P1((n-2),43)=(xulie_1(4,(n-2))*xulie_1(4,2))/4;
        P1((n-2),44)=(xulie_1(4,(n-2))*xulie_1(4,3))/5;
        for j= (n-2):(n-2)        
            for jj=1:5
                P1(j,(34+jj))=(xulie_1(4,j)*xulie_1(4,(j-jj)))/jj;
            end
        end      
  
        %(n-1)位置
        P1((n-1),40)=(xulie_1(4,(n-1))*xulie_1(4,n))/1;
        P1((n-1),41)=(xulie_1(4,(n-1))*xulie_1(4,1))/2;
        P1((n-1),42)=(xulie_1(4,(n-1))*xulie_1(4,2))/3;
        P1((n-1),43)=(xulie_1(4,(n-1))*xulie_1(4,3))/4;
        P1((n-1),44)=(xulie_1(4,(n-1))*xulie_1(4,4))/5;
        for j= (n-1):(n-1)        
            for jj=1:5
                P1(j,(34+jj))=(xulie_1(4,j)*xulie_1(4,(j-jj)))/jj;
            end
        end   




        %n位置
        P1(n,40)=(xulie_1(4,n)*xulie_1(4,1))/1;
        P1(n,41)=(xulie_1(4,n)*xulie_1(4,2))/2;
        P1(n,42)=(xulie_1(4,n)*xulie_1(4,3))/3;
        P1(n,43)=(xulie_1(4,n)*xulie_1(4,4))/4;
        P1(n,44)=(xulie_1(4,n)*xulie_1(4,5))/5;
        for j= n:n       
            for jj=1:5
                P1(j,(34+jj))=(xulie_1(4,j)*xulie_1(4,(j-jj)))/jj;
            end
        end   
         
        
        
        
        
        

    %  第五种特性
    % R6,R5,R5,R5,R5,R1,R7,R8,R9,R10,R11特征按这种顺序排卵     
        for j= 6:(n-5)           
            for jj=1:5
                P1(j,(45+jj))=(xulie_1(5,j)*xulie_1(5,(j-jj)))/jj;
                P1(j,(50+jj))=(xulie_1(5,j)*xulie_1(5,(j+jj)))/jj;
            end
        end
        
        
        
        %方法一特殊处理前5个和后5个位置（第一个性质）

        %1位置
        P1(1,46)=(xulie_1(5,1)*xulie_1(5,n))/1;
        P1(1,47)=(xulie_1(5,1)*xulie_1(5,(n-1)))/2;
        P1(1,48)=(xulie_1(5,1)*xulie_1(5,(n-2)))/3;
        P1(1,49)=(xulie_1(5,1)*xulie_1(5,(n-3)))/4;
        P1(1,50)=(xulie_1(5,1)*xulie_1(5,(n-4)))/5;
         
        for j= 1:1          
            for jj=1:5
                P1(j,(50+jj))=(xulie_1(5,j)*xulie_1(5,(j+jj)))/jj;
            end
        end    
        


        %2位置
        P1(5,46)=(xulie_1(5,2)*xulie_1(5,1))/1;
        P1(5,47)=(xulie_1(5,2)*xulie_1(5,n))/2;
        P1(5,48)=(xulie_1(5,2)*xulie_1(5,(n-1)))/3;
        P1(5,49)=(xulie_1(5,2)*xulie_1(5,(n-2)))/4;
        P1(5,50)=(xulie_1(5,2)*xulie_1(5,(n-3)))/5;
        for j= 2:2          
            for jj=1:5
                P1(j,(50+jj))=(xulie_1(5,j)*xulie_1(5,(j+jj)))/jj;
            end
        end   
        
        
        %3位置
        P1(5,46)=(xulie_1(5,3)*xulie_1(5,2))/1;
        P1(5,47)=(xulie_1(5,3)*xulie_1(5,1))/2;
        P1(5,48)=(xulie_1(5,3)*xulie_1(5,n))/3;
        P1(5,49)=(xulie_1(5,3)*xulie_1(5,(n-1)))/4;
        P1(5,50)=(xulie_1(5,3)*xulie_1(5,(n-2)))/5;
        for j= 3:3          
            for jj=1:5
                P1(j,(50+jj))=(xulie_1(5,j)*xulie_1(5,(j+jj)))/jj;
            end
        end 
        
        %4位置
        P1(5,46)=(xulie_1(5,4)*xulie_1(5,3))/1;
        P1(5,47)=(xulie_1(5,4)*xulie_1(5,2))/2;
        P1(5,48)=(xulie_1(5,4)*xulie_1(5,1))/3;
        P1(5,49)=(xulie_1(5,4)*xulie_1(5,n))/4;
        P1(5,50)=(xulie_1(5,4)*xulie_1(5,(n-1)))/5;
        for j= 4:4         
            for jj=1:5
                P1(j,(50+jj))=(xulie_1(5,j)*xulie_1(5,(j+jj)))/jj;
            end
        end     
        
        
        %5位置
        P1(5,46)=(xulie_1(5,5)*xulie_1(5,4))/1;
        P1(5,47)=(xulie_1(5,5)*xulie_1(5,3))/2;
        P1(5,48)=(xulie_1(5,5)*xulie_1(5,2))/3;
        P1(5,49)=(xulie_1(5,5)*xulie_1(5,1))/4;
        P1(5,50)=(xulie_1(5,5)*xulie_1(5,n))/5;
        for j= 5:5         
            for jj=1:5
                P1(j,(50+jj))=(xulie_1(5,j)*xulie_1(5,(j+jj)))/jj;
            end
        end     
           
        %(n-4)位置
        P1((n-4),51)=(xulie_1(5,(n-4))*xulie_1(5,(n-3)))/1;
        P1((n-4),52)=(xulie_1(5,(n-4))*xulie_1(5,(n-2)))/2;
        P1((n-4),53)=(xulie_1(5,(n-4))*xulie_1(5,(n-1)))/3;
        P1((n-4),54)=(xulie_1(5,(n-4))*xulie_1(5,n))/4;
        P1((n-4),55)=(xulie_1(5,(n-4))*xulie_1(5,1))/5;
        for j= (n-4):(n-4)        
            for jj=1:5
                P1(j,(45+jj))=(xulie_1(5,j)*xulie_1(5,(j-jj)))/jj;
            end
        end  
        
        %(n-3)位置
        P1((n-3),51)=(xulie_1(5,(n-3))*xulie_1(5,(n-2)))/1;
        P1((n-3),52)=(xulie_1(5,(n-3))*xulie_1(5,(n-1)))/2;
        P1((n-3),53)=(xulie_1(5,(n-3))*xulie_1(5,n))/3;
        P1((n-3),54)=(xulie_1(5,(n-3))*xulie_1(5,1))/4;
        P1((n-3),55)=(xulie_1(5,(n-3))*xulie_1(5,2))/5;
        for j= (n-3):(n-3)        
            for jj=1:5
                P1(j,(45+jj))=(xulie_1(5,j)*xulie_1(5,(j-jj)))/jj;
            end
        end     
        
        %(n-2)位置
        P1((n-2),51)=(xulie_1(5,(n-2))*xulie_1(5,(n-1)))/1;
        P1((n-2),52)=(xulie_1(5,(n-2))*xulie_1(5,n))/2;
        P1((n-2),53)=(xulie_1(5,(n-2))*xulie_1(5,1))/3;
        P1((n-2),54)=(xulie_1(5,(n-2))*xulie_1(5,2))/4;
        P1((n-2),55)=(xulie_1(5,(n-2))*xulie_1(5,3))/5;
        for j= (n-2):(n-2)        
            for jj=1:5
                P1(j,(45+jj))=(xulie_1(5,j)*xulie_1(5,(j-jj)))/jj;
            end
        end      
  
        %(n-1)位置
        P1((n-1),51)=(xulie_1(5,(n-1))*xulie_1(5,n))/1;
        P1((n-1),52)=(xulie_1(5,(n-1))*xulie_1(5,1))/2;
        P1((n-1),53)=(xulie_1(5,(n-1))*xulie_1(5,2))/3;
        P1((n-1),54)=(xulie_1(5,(n-1))*xulie_1(5,3))/4;
        P1((n-1),55)=(xulie_1(5,(n-1))*xulie_1(5,4))/5;
        for j= (n-1):(n-1)        
            for jj=1:5
                P1(j,(45+jj))=(xulie_1(5,j)*xulie_1(5,(j-jj)))/jj;
            end
        end   




        %n位置
        P1(n,51)=(xulie_1(5,n)*xulie_1(5,1))/1;
        P1(n,52)=(xulie_1(5,n)*xulie_1(5,2))/2;
        P1(n,53)=(xulie_1(5,n)*xulie_1(5,3))/3;
        P1(n,54)=(xulie_1(5,n)*xulie_1(5,4))/4;
        P1(n,55)=(xulie_1(5,n)*xulie_1(5,5))/5;
        for j= n:n       
            for jj=1:5
                P1(j,(45+jj))=(xulie_1(5,j)*xulie_1(5,(j-jj)))/jj;
            end
        end   
         
        
       
        
     
        
   
      dlmwrite(['D:/吕艳芬/预测真实复合物/四体/2',data_name,'.txt'],P1,'delimiter', '\t','precision','%0.5f','newline', 'pc')
  
    
       
       %xlswrite(['D:/吕艳芬/预测真实复合物/test/1/',data_name,'.xlsx'],P1，)
       %saveas(shushui_20_qiucha,['D:/吕艳芬/预测真实复合物/huatu/',data_name,'.png'])%注意：保存的路径后必须以'/'结尾，否则不能保存
    end



    