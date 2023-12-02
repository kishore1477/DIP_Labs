% Kishore 27134
% lab # 10
% Task #01 (Negative Image)
clc
clear all
close all
% Image Reading
figure()
subplot(2,3,1)
[kishore_img1, map] = imread('corns.png');
imshow(kishore_img1)
title('Original Image I')
subplot(2,3,2)
[kishore_img2, map] = imread('shirt.jpg');
imshow(kishore_img2)
title('Original Image II')
% Histogram Equalization
imgEQ1 = histeq(kishore_img1);
subplot(2,3,4)
imshow(imgEQ1);
title('Histogram Equalized Image I')
imgEQ2 = histeq(kishore_img2);
subplot(2,3,5)
imshow(imgEQ2);
title('Histogram Equalized Image II')
% Image Negatives
neg_img1 = imcomplement(kishore_img1);
subplot(2,3,3)
imshow(neg_img1);
title('Negative Image I')
neg_img2 = imcomplement(kishore_img2);
subplot(2,3,6)
imshow(neg_img2);
title('Negative Image II')