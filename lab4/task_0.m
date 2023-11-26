clc
clear all;
close all;
% kishore 27134
% Lab 04
[kishore_img, kishore_map] = imread('Corns.png');
kishore_V = 1:8:255;
I_32 = imquantize(kishore_img, kishore_V);
kishore_V = 1:16:255;
I_16 = imquantize(kishore_img, kishore_V);
figure,
subplot(221),
imagesc(kishore_img),
axis image,
colormap gray,
colorbar, title('Original');
subplot(222),
imagesc(I_32),
axis image,
colormap gray,
colorbar,
title('32 levels');
subplot(223),
imagesc(I_16),
axis image,
colormap gray,
colorbar,
title('16 levels');