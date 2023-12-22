% kishore 20202-27134
% Lab 12
% Task 01, 02, 03 HPF
clc;
clear all;
close all;

kishore_img = imread('shirt.jpg');
filter_size = 200;
cutoff_frequency = 50;

% Generate low-pass filter
lpf = fspecial('gaussian', filter_size, cutoff_frequency);

% Generate high-pass filter
hpf = 1 - lpf;

% Display high-pass filter mesh
mesh(hpf);
title('High-Pass Filter Mesh');

% Applying high-pass filter on the image
filtered_img = imfilter(double(kishore_img), hpf, 'conv', 'full');

% Display original and filtered images
figure;
subplot(1, 2, 1); imshow(kishore_img); title('Original Image');
subplot(1, 2, 2); imshow(filtered_img); title('Filtered Image');
