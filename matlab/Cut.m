function imout = Cut(im)
%Image Processing Function
%
% IM    - input image.
% IMOUT - output image.
%

%--------------------------------------------------------------------------
% Auto-generated by imageBatchProcessor App. 
%
% When used by the App, this function will be called for every input image
% file automatically. IM contains the input image as a matrix. The output
% image contained in IMOUT will be automatically written as an image into
% the output folder.
%
% Replace the code line below with your code to create IMOUT from IM:
%--------------------------------------------------------------------------

imout = im(260:860,:,:);