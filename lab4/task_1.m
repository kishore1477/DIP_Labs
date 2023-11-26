% kishore 27134
% Lab 04
% Task 01
% Load the images
kishore_image1 = imread('Corns.png');
kishore_image2 = imread('shirt.jpg');
% Convert images to grayscale if they are RGB
if size(kishore_image1, 3) == 3
    image1 = rgb2gray(kishore_image1);
else
    image1 = kishore_image1; % Image is already grayscale
end
if size(kishore_image2, 3) == 3
    image2 = rgb2gray(kishore_image2);
else
    image2 = kishore_image2; % Image is already grayscale
end
% Create a new figure
figure;
% Display the original images
subplot(4, 4, 1);
imshow(kishore_image1);
title('Original Image 1');
subplot(4, 4, 2);
imshow(kishore_image2);
title('Original Image 2');
% Quantize and display the images with different numbers of bits
for bits = 1:8
    % Quantize the images
    kishore_image1_quantized = uint8(floor(double(image1) / 2^(8 - bits)) * 2^(8 - bits));
    kishore_image2_quantized = uint8(floor(double(image2) / 2^(8 - bits)) * 2^(8 - bits));
    % Display the quantized images
    subplot(4, 4, bits * 2 + 1);
    imshow(kishore_image1_quantized);
    title(['Quantized ', num2str(bits), ' bits']);
    subplot(4, 4, bits * 2 + 2);
    imshow(kishore_image2_quantized);
    title(['Quantized ', num2str(bits), ' bits']);
end
