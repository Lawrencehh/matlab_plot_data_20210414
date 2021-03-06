t0 = load('NoMag-0.5-LM-Vertical-2.txt');
t1 = load('0.4TMag-0.5-LM-Vertical-2.txt');
% t2 = load('0.3TMag-0.6-LM-Vertical-1.txt');
% t3 = load('0.4TMag-0.6-LM-Vertical-1.txt');
%读取目录内的txt文件至矩阵中

xt0 = t0(:,1);
xt0 = xt0 - 4;%0t数据平行移动
xt1 = t1(:,1);
% xt2 = t2(:,1);
% xt3 = t3(:,1);

yt0 = t0(:,2);
yt1 = t1(:,2);
% yt2 = t2(:,2);
% yt3 = t3(:,2);
%将矩阵拆分为两个向量


%进行绘图
plot(xt0,yt0)
hold on;
plot(xt1,yt1)
% hold on;
% plot(xt2,yt2)
% hold on;
% plot(xt3,yt3)
% legend('0T','0.28T','0.3T','0.4T'); %添加图例
legend('0T','0.4T'); %添加图例
title('0.5薄片液态金属材料，不同磁场下垂直方向应力形变关系（最后测的数据）')   %添加标题

%设置横纵轴名称及字体大小
xlabel('激光位移传感器数据/mm','FontSize',16);
ylabel('力传感器Fz/N','FontSize',16);

