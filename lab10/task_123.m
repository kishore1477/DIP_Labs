% kishore 27134
% TASK NO: 01,02,03
clc
clear all
close all
% Image Reading

subplot(2,2,1)
[kishore_img1, map] = imread('corns.png');
imhist(kishore_img1);
title('Histogram Image I')
subplot(2,2,2)
[kishore_img2, map] = imread('shirt.jpg');
imhist(kishore_img2);
title('Histogram Image II')
% Histogram Equalization
imgEQ1 = histeq(kishore_img1);

subplot(2,2,3)
imhist(imgEQ1);
title('Histogram Equalization Image I')
imgEQ2 = histeq(kishore_img2);
subplot(2,2,4)
imhist(imgEQ2);
title('Histogram Equalization Image II')