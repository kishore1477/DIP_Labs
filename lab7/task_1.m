% Name: kishore 27134
% lab 07 DIGITAL IMAGE PROCESSING
% Task 01: What prod(size(imgFT)) function in MATLAB does. Apply it to above image and conclude on
% Image with Color
[kishore_I,map] = imread('corns.png');
subplot(2,2,1)
imshow(kishore_I,'InitialMagnification', 'fit')
title('Image')
%Calculate the DFT.
F2=abs(kishore_I);
subplot(2,2,2)
imshow(F2,[],'InitialMagnification','fit')
title('Img Magnitude Res using ABS')
prod(size(F2))