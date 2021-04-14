% path = 'D:\matlab_test\matlab_plot_data_20210414\raw_data\2021_4_14_data\0.3�Ľ�����Ƭ-0.4T\';
path = 'D:\matlab_test\matlab_plot_data_20210414\raw_data\2021_4_14_data\0.6�Ľ�����Ƭ��-0.4T\';%�����Ҫ��'\'��б�ܱ�ʾ��һ��Ŀ¼
%����Ϊtxt���ݴ�ŵĵ�ַ

namelist = dir([path,'*.txt']);
% ��ȡ��namelist?�ĸ�ʽΪ
% name -- filename
% date -- modification date
% bytes -- number of bytes allocated to the file
% isdir -- 1 if name is a directory and 0 if not
l = length(namelist);

%��������Ϊ������ͼ����ͼƬ���룬����һЩ���������Ҫ�ֶ�ȥ��
for i = 1:l
    filename{i} = [path,namelist(i).name];%ͨ���ַ���ƴ�ӻ�õľ��Ǿ���·����
    temp = load(filename{i});
    x = temp(:,1);
    y = temp(:,2);
    fig = figure; % �½�һ��figure������ͼ�������浽fig
    plot(x,y)
    frame = getframe(fig); % ��ȡframe
    img = frame2im(frame); % ��frame�任��imwrite��������ʶ��ĸ�ʽ
    imwrite(img,[path,namelist(i).name,'.png']); % ���浽����Ŀ¼�£�����Ϊ"namelist(i).name.png"
    %���ú��������Ƽ������С
    xlabel('����λ�ƴ���������/mm','FontSize',16);
    ylabel('��������Fz/N','FontSize',16);

end