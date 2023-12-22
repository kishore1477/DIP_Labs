% kishore 20202-27134
% Lab 12
% Task 1
clc
clear all;
close all;
kishore_img = imread('thar.jfif');
h = fspecial('sobel');


PQ = paddedsize(size(kishore_img));
F =fft2(double(kishore_img), PQ(1), PQ(2));
H = fft2(double(h), PQ(1), PQ(2));
F_fH = (H.*F);
ffi = ifft2(F_fH);
ffi =ffi(2:size(kishore_img,1)+1, 2:size(kishore_img,2)+1); 
ffim = abs(ffi);
figure,
imshow(ffim, []);
subplot(1,3,1);imshow(kishore_img);title('Original');
subplot(1,3,2);imshow(ffi,[]); title('Padded Img');
subplot(1,3,3);imshow(ffim, []);title('Magnitude');