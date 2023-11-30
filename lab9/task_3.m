% kishore 27134
% lab 09
% Task 03: Translation
% Load the image
 % kishore_img = imread('lab9/apple.jpg');
  % kishore_img = imread('lab9/corns.png');
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
title('Original')
% Define the translation offsets
translation_offset = [20, 10]; % Adjust the translation offset as needed
% Calculate the DFT and amplitude spectrum for the translated image
translated_image = imtranslate(kishore_image, translation_offset, 'bilinear');
ft_translated_image = fft2(translated_image);
ft_translated_image_shifted = fftshift(ft_translated_image);
magnitude_translated = abs(ft_translated_image_shifted);
% Display the magnitude of the 2DFT for the translated image
subplot(1, 3, 2),
imshow(log(1 + magnitude_translated), []);
title('Translated')
% Make sure both magnitude arrays have the same dimensions
[m, n] = size(magnitude_original);
magnitude_translated = imresize(magnitude_translated, [m, n]);
% Calculate and display the difference in amplitude spectrum
magnitude_difference = abs(magnitude_original - magnitude_translated);
subplot(1, 3, 3),
imshow(log(1 + magnitude_difference), []);
title('Magnitude Difference')