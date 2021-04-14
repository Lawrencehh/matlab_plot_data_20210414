% path = 'D:\matlab_test\matlab_plot_data_20210414\raw_data\2021_4_14_data\0.3的金属薄片-0.4T\';
path = 'D:\matlab_test\matlab_plot_data_20210414\raw_data\2021_4_14_data\0.6的金属薄片你-0.4T\';%最后需要加'\'反斜杠表示是一个目录
%上述为txt数据存放的地址

namelist = dir([path,'*.txt']);
% 读取后namelist?的格式为
% name -- filename
% date -- modification date
% bytes -- number of bytes allocated to the file
% isdir -- 1 if name is a directory and 0 if not
l = length(namelist);

%下述代码为批量绘图保存图片代码，其中一些噪点数据需要手动去除
for i = 1:l
    filename{i} = [path,namelist(i).name];%通过字符串拼接获得的就是绝对路径了
    temp = load(filename{i});
    x = temp(:,1);
    y = temp(:,2);
    fig = figure; % 新建一个figure，并将图像句柄保存到fig
    plot(x,y)
    frame = getframe(fig); % 获取frame
    img = frame2im(frame); % 将frame变换成imwrite函数可以识别的格式
    imwrite(img,[path,namelist(i).name,'.png']); % 保存到工作目录下，名字为"namelist(i).name.png"
    %设置横纵轴名称及字体大小
    xlabel('激光位移传感器数据/mm','FontSize',16);
    ylabel('力传感器Fz/N','FontSize',16);

end