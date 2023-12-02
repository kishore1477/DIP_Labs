% Name: kishore  27134
% TASK NO: 02 (Gamma Transformation)
clc
clear all
close all
% Read the image
original_image = imread('corns.png');
% Display the original image
subplot(2, 2, 1);
imshow(original_image);
title('Original Image');
% Define gamma values
gamma_values = [1, 0.4, 3];
% Loop through gamma values and apply gamma transformation
for i = 1:length(gamma_values)
    gamma_transformed = imadjust(original_image, [], [], gamma_values(i));
    % Display the gamma-transformed image
    subplot(2, 2, i+1);
    imshow(gamma_transformed);
    title(['Gamma = ' num2str(gamma_values(i))]);
end