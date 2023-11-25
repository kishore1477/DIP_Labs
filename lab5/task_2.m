%kishore 27132
%Lab 05
%Task 02
clc
clear all;
close all;

% Read the high-quality image
kishore_img = imread('lab5/shirt.jpg');

% Subsample the image by taking every 4th pixel
subsampled_img = kishore_img(1:4:end, 1:4:end, :);

% Display the original and subsampled images
figure;
subplot(1,2,1);
imshow(kishore_img);
title('Original Image');
subplot(1,2,2);
imshow(subsampled_img);
title('Subsampled Image');
