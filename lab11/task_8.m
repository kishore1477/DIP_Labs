%  kishore 27134
% TASK NO: 08
clc;
clear all;
close all;
% Load an image
kishore_image = imread('corns.png');
% Display the original image
subplot(1, 3, 1);
imshow(kishore_image);
title('Original Image');
% Add random noise to the image
noisy_image = imnoise(kishore_image, 'salt & pepper', 0.02);
% Display the noisy image
subplot(1, 3, 2);
imshow(noisy_image);
title('Noisy Image');
% Create a filter for noise reduction (example: average filter)
filter_size = 4;
noise_free_output = imfilter(noisy_image, fspecial('average', [filter_size filter_size]));
% Display the noise-free output
subplot(1, 3, 3);
imshow(noise_free_output);
title('Noise-Free (After Filtering)');