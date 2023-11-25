%kishore 27134
%Lab 05
%Task 03
clc
clear all;
close all;

% Read the high-quality image
kishore_img = imread('lab5/shirt.jpg');

% Blur the image by averaging 4 by 4 pixels
blurred_img = imresize(kishore_img, 0.25, 'box');

% Subsample the image by taking every pixel
subsampled_img = blurred_img;

% Display the original, blurred, and subsampled images
figure;
subplot(1,3,1);
imshow(kishore_img);
title('Original Image');

subplot(1,3,2);
imshow(blurred_img);
title('Blurred Image');

subplot(1,3,3);
imshow(subsampled_img);
title('Subsampled Image');
