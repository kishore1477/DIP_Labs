% Kishore openended lab
% Create a grayscale image as an example
grayImage = imread('shirt.jpg'); % Replace with your image file
grayImage = rgb2gray(grayImage);

% Convert to binary image using a threshold (adjust threshold as needed)
binaryImage = imbinarize(grayImage, 'adaptive');

% Define a structuring element (e.g., a disk)
se = strel('disk', 5);

% Opening on Foreground Pixels
openedImage = imopen(binaryImage, se);

% Closing on Background Pixels (by taking the complement and applying opening)
complementImage = imcomplement(binaryImage);
closedImage = imopen(complementImage, se);

% Display the original, opened, and closed images
figure;

subplot(1, 3, 1);
imshow(binaryImage);
% Original Binary Image
title('OBI');

subplot(1, 3, 2);
imshow(openedImage);
title('Opened Img');

subplot(1, 3, 3);
imshow(closedImage);
% Closed Image (on Background Pixels)
title('Closed Img');
