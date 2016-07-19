function result=SingleProcess(fileName,srcPath,dstPath)
close all;
srcfilename=[srcPath fileName '.bmp']; 
distfilename=[dstPath fileName '.mat'];
if exist(srcfilename,'file')==0
    result=0;
    return;
else
    srcfilename=[srcPath fileName '.bmp']; %是否和3,4行代码重复？
    distfilename=[dstPath fileName '.mat'];
    RGB=imread(srcfilename);
    [imgHeight imgWidth imgDeepth]=size(RGB);
    if(imgDeepth>1) %深度即通道数，决定是黑白图像还是彩色图像
        Gray=rgb2gray(RGB);%将彩色图像转化为黑白图像
    else
        Gray=RGB;
    end
    Gray = Cut(Gray);
    wname='db4';
    maskMatrix=ones(64);
    [imageFiltered,imageDwted,imageDwtMasked,cellDwted,cellMasked,...
        imageInvFiltered,imageInvMasked,cellInvMasked] = WaveLetsFilter(Gray,wname,maskMatrix);
    save(distfilename,'Gray');
    save(distfilename,'wname','-append');
    save(distfilename,'maskMatrix','-append');
    save(distfilename,'imageFiltered','-append');
    save(distfilename,'imageDwted','-append');
    save(distfilename,'imageFiltered','-append');
    save(distfilename,'imageDwtMasked','-append');
    save(distfilename,'cellDwted','-append');
    save(distfilename,'cellMasked','-append');
    save(distfilename,'imageInvFiltered','-append');
    save(distfilename,'imageInvMasked','-append');
    save(distfilename,'cellInvMasked','-append');
end