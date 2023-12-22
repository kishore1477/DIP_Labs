% kishore 27134
% Dip Lab: 14
% Task 03 Laplacian
clc; clear all; close all;
figure()
kishore_img = imread('apple.jpg');
subplot(1,2,1)
imshow(kishore_img); title("original")
laplacian_filter = fspecial('laplacian');
kishore_img_laplacian = imfilter(kishore_img, laplacian_filter);
subplot(1,2,2)
imshow(kishore_img_laplacian);
title('Laplacian Operator');