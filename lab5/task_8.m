%kishore 27134
%Lab 05
%Task 08
clc
clear all;
close all;

% Read previous two images
kishore_img1 = imread('lab5/shirt.jpg');
kishore_img2 = imread('lab5/Corns.png');

% Reduce their sizes 4 times using imresize()
resized_img1 = imresize(kishore_img1, 0.25);
resized_img2 = imresize(kishore_img2, 0.25);

% Display the original and resized images in a 2-by-2 grid
figure;
% Create four subplots in the grid
subplot(2,2,1);
imshow(kishore_img1);
title('Original Image 1');

subplot(2,2,2);
imshow(resized_img1);
title('Resized Image 1');

subplot(2,2,3);
imshow(kishore_img2);
title('Original Image 2');

subplot(2,2,4);
imshow(resized_img2);
title('Resized Image 2');
