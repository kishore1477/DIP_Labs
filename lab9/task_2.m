% kishore 27134
% lab 09
% Task 02: Rotation

% kishore 27134
 % Lab 09 DIP

% Load the image
kishore_img = imread('corns.png');
% Convert the image to double precision for accurate computation
kishore_image = im2double(kishore_img);
% Compute the 2DFT of the image
ft_image = fft2(kishore_image);
% Shift the zero frequency component to the center
ft_image_shifted = fftshift(ft_image);
% Calculate the magnitude of the 2DFT for the original image
magnitude_original = abs(ft_image_shifted);
% Display the magnitude of the 2DFT for the original image

subplot(1, 3, 1),
imshow(log(1 + magnitude_original), []);
title('(Original)')
% Define the rotation angle
rotation_angle = 30; % Adjust the rotation angle as needed
% Calculate the DFT and amplitude spectrum for the rotated image
rotated_image = imrotate(kishore_image, rotation_angle, 'bilinear', 'crop');
ft_rotated_image = fft2(rotated_image);
ft_rotated_image_shifted = fftshift(ft_rotated_image);
magnitude_rotated = abs(ft_rotated_image_shifted);
% Display the magnitude of the 2DFT for the rotated image
subplot(1, 3, 2),
imshow(log(1 + magnitude_rotated), []);
title('(Rotated)')
% Make sure both magnitude arrays have the same dimensions
[m, n] = size(magnitude_original);
magnitude_rotated = imresize(magnitude_rotated, [m, n]);
% Calculate and display the difference in amplitude spectrum
magnitude_difference = abs(magnitude_original - magnitude_rotated);
subplot(1, 3, 3),
imshow(log(1 + magnitude_difference), []);
title('Magnitude Difference')