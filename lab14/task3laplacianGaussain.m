% kishore 27134
% Dip Lab: 14
% Task 03 Laplacian of Gaussian
clc; clear all; close all;
kishore_img = imread('apple.jpg');
img_gray = rgb2gray(kishore_img);
% Laplacian of Gaussian (LoG) Filter
log_filter = fspecial('log');
img_log = imfilter(img_gray, log_filter);
% Custom Laplacian Filter
laplacian_filter_custom = [0 1 0; 1 -4 1; 0 1 0];
img_laplacian_custom = imfilter(img_gray, laplacian_filter_custom);
% Display results
figure;
subplot(1, 3, 1), imshow(img_gray), title('Original Image');
subplot(1, 3, 2), imshow(img_log), title('LoG Filter');
subplot(1, 3, 3), imshow(img_laplacian_custom), title('Custom Laplacian Filter');