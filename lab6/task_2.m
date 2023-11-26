% Name: kishore 27134
% lab 06
% Task 02
clc
clear all
close all
% Load the image 'Corns.png' and store it in the variable 'kishore_I'
kishore_I = imread('Corns.png');
% Step 1: Add Gaussian noise to the original image and create a corrupted image
% Gaussian noise with zero mean and 0.1 variance is added to 'kishore_I'
NoisyImage = imnoise(kishore_I, 'gaussian', 0, 0.1);
% Step 2: Compute average pixel intensity and standard deviation for the original image
averageIntensityOriginal = mean(kishore_I(:));
stdDevOriginal = std(double(kishore_I(:)));

% Step 3: Compute average pixel intensity and standard deviation for the noisy image
averageIntensityNoisy = mean(NoisyImage(:));
stdDevNoisy = std(double(NoisyImage(:)));
% Display the results
fprintf('Original Image:\n');
fprintf('Average Pixel Intensity: %f\n', averageIntensityOriginal);
fprintf('Standard Deviation: %f\n', stdDevOriginal);
fprintf('Noisy Image:\n');
fprintf('Average Pixel Intensity: %f\n', averageIntensityNoisy);
fprintf('Standard Deviation: %f\n', stdDevNoisy);
% Display the Original and Noisy Image

subplot(1, 2, 1)
imagesc(kishore_I) % Display the original image
axis image % Maintain the aspect ratio
colormap gray % Set the colormap to grayscale
colorbar % Display the colorbar
title('Original Image');
subplot(1, 2, 2)
imagesc(NoisyImage) % Display the Noisy image
axis image % Maintain the aspect ratio
colormap gray % Set the colormap to grayscale
colorbar % Display the colorbar
title('Noisy Image');