t0 = load('NoMag-0.6-LM-Parallel-1.txt');
t1 = load('0.4TMag-0.6-LM-Parallel-1.txt');
% t2 = load('0.3TMag-0.6-LM-Vertical-1.txt');
% t3 = load('0.4TMag-0.6-LM-Vertical-1.txt');
%��ȡĿ¼�ڵ�txt�ļ���������

xt0 = t0(:,1);
xt1 = t1(:,1);
% xt2 = t2(:,1);
% xt3 = t3(:,1);

yt0 = t0(:,2);
yt1 = t1(:,2);
% yt2 = t2(:,2);
% yt3 = t3(:,2);
%��������Ϊ��������


%���л�ͼ
plot(xt0,yt0)
hold on;
plot(xt1,yt1)
% hold on;
% plot(xt2,yt2)
% hold on;
% plot(xt3,yt3)
% legend('0T','0.28T','0.3T','0.4T'); %���ͼ��
legend('0T','0.4T'); %���ͼ��
title('0.6��Ƭ��ͬ�ų���ƽ�з���Ӧ���α��ϵ')   %��ӱ���
%���ú��������Ƽ������С
xlabel('����λ�ƴ���������/mm','FontSize',16);
ylabel('��������Fz/N','FontSize',16);

