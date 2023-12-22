% Kishore 20202-27134
% Lab 12
% Task 01,02,03 LPF
clc
clear all;
close all;
kishore_img = imread('corns'); 
filter_size =500;
cutoff_frequency = 50;
% Generate mesh of low pass filters
lpf1 = lpfilter('ideal', filter_size, filter_size, cutoff_frequency);
lpf2 = lpfilter('btw', filter_size, filter_size, cutoff_frequency, 1);
lpf3 = lpfilter('gaussian', filter_size, filter_size, cutoff_frequency);
hpf1 = 1 - lpf1; hpf2 = 1 - lpf2; hpf3 = 1 - lpf3;
subplot(1, 3, 1); mesh(hpf1); title('Ideal LPF Mesh');
subplot(1, 3, 2); mesh(hpf2); title('Butterworth LPF Mesh');
subplot(1, 3, 3); mesh(hpf3);title('Gaussian LPF Mesh');
% Applying Gaussian low pass filter on the image (Task 3)
filtered_img = imfilter(double(kishore_img), double(hpf3),'full');
% Display original and filtered images
figure; subplot(1, 2, 1); imshow(kishore_img); title('Original Image');
subplot(1, 2, 2); imshow(filtered_img,[]); title('Filtered Image');
