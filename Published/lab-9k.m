clc
clear all
close all
% DIP Lab=09
% Load the image (replace 'your_image.png' with the path to your image)
% Task 01
Chaman_img = imread("lab9/apple.jpg");
% Convert the image to double precision for accurate computation
Chaman_image = im2double(Chaman_img);
% Compute the 2DFT of the image
ft_image = fft2(Chaman_image);
% Shift the zero frequency component to the center 
% 
ft_image_shifted = fftshift(ft_image);
% Calculate the magnitude of the 2DFT for the original image
magnitude_original = abs(ft_image_shifted);
% Display the magnitude of the 2DFT for the original image subplot(1, 3, 1),
imshow(log(1 + magnitude_original), []), title('Magnitude of 2DFT (Original)')
% Define the scaling factor
scale_factor = 0.5; % Adjust the scaling factor as needed
% Calculate the DFT and amplitude spectrum for the scaled image
scaled_image = imresize(Chaman_image, size(chaman_image) * scale_factor, 'bilinear'); % Resize to match the original
image size
ft_scaled_image = fft2(scaled_image);
ft_scaled_image_shifted = fftshift(ft_scaled_image);
magnitude_scaled = abs(ft_scaled_image_shifted);
% Display the magnitude of the 2DFT for the scaled image subplot(1, 3, 2),
imshow(log(1 + magnitude_scaled), []),
title('Magnitude of 2DFT (Scaled)')
% Make sure both magnitude arrays have the same dimensions
[m, n] = size(magnitude_original); 
magnitude_scaled = imresize(magnitude_scaled, [m, n]);
% Calculate and display the difference in amplitude spectrum
magnitude_difference = abs(magnitude_original - magnitude_scaled); 
subplot(1, 3, 3),
imshow(log(1 + magnitude_difference), []), 
title('Magnitude Difference')
