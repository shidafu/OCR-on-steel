% %%
srcPath='D:\����ʶ����Ŀ\20160715_gray\';
dstPath='D:\����ʶ����Ŀ\20160715_filtered\';
[Num PathArray NameArray] =LoadBMPFiles(srcPath);
leftName='';

for i=1:Num
    leftName=NaN;
    leftNamelong=NameArray(i,:);
    leftName= StrDelTail(leftNamelong);
    leftNameLen=length(leftName)-4;
    leftName=leftName(1,1:leftNameLen);
    name=[srcPath leftName '.bmp'];
    %A=imread(name);
    SingleProcess(leftName,srcPath,dstPath);
end
 