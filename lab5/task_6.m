%kishore 27134
%Lab 05
%Task 06
clc
clear all;
close all;

% Read one previous image
kishore_img = imread('lab5/shirt.jpg');

% Subsample it by factor 2 only in y-axis direction
subsampled_img = kishore_img(1:2:end, :, :);

% Display the original and subsampled images
figure;
subplot(1,2,1);
imshow(kishore_img);
title('Original Image');

subplot(1,2,2);
imshow(subsampled_img);
title('Subsampled Image');
