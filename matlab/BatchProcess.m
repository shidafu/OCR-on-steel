% %%
srcPath='D:\OCR-on-steel\sample\20160714\';
dstPath='D:\OCR-on-steel\sample\20160714_out\';
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
 