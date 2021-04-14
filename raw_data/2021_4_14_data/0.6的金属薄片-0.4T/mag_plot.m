t0 = load('NoMag-0.6-LM-Vertical-1.txt');
t1 = load('0.28TMag-0.6-LM-Vertical-1.txt');
t2 = load('0.3TMag-0.6-LM-Vertical-1.txt');
t3 = load('0.4TMag-0.6-LM-Vertical-1.txt');
%读取目录内的txt文件至矩阵中

xt0 = t0(:,1);
xt1 = t1(:,1);
xt2 = t2(:,1);
xt3 = t3(:,1);

yt0 = t0(:,2);
yt1 = t1(:,2);
yt2 = t2(:,2);
yt3 = t3(:,2);
%将矩阵拆分为两个向量


%进行绘图
plot(xt0,yt0)
hold on;
plot(xt1,yt1)
hold on;
plot(xt2,yt2)
hold on;
plot(xt3,yt3)
legend('0T','0.28T','0.3T','0.4T'); %添加图例
title('0.6薄片不同磁场下垂直方向应力形变关系')   %添加标题