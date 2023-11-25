clc
clear all;
close all;
% Read the image
kishore_img = imread('lab5/shirt.jpg');
% Create a figure
figure();
% Loop over the factors
for factor = 1:5
    % Blur the image
    blurred_img = imgaussfilt(kishore_img, factor);

    % Subsample the image without pre-filtering
    subsampled_img = imresize(blurred_img, 1/factor, 'bicubic');

    % Display the image using subplot
    subplot(2, 3, factor);
    imshow(subsampled_img);
    title(['Factor: ', num2str(factor)]);
end
