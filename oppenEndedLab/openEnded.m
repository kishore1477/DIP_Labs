% Kishore Kumar Openended lab 
% id # 20202-27134
originalImage = imread('corns.png');

% Convert the image to binary (assuming it's a grayscale image)
binaryImage = imbinarize(originalImage);

% Display the original binary image
figure;
subplot(1, 3, 1);
imshow(binaryImage);
title('Original Img');

% Define a structuring element (e.g., a disk)
se = strel('disk', 5);

% Perform opening on the original image
openedImage = imopen(binaryImage, se);

% Display the opened image
subplot(1, 3, 2);
imshow(openedImage);
title('Opened Img');

% Perform closing on the complement of the original image
complementImage = ~binaryImage;  % Complement of the original image
closedComplementImage = imclose(complementImage, se);

% Display the closed complement image
subplot(1, 3, 3);
imshow(~closedComplementImage);  % Display the complement of the closed image
title('Close Complement Img');

% Verify duality: Opened image should be equivalent to complement of closed complement image
disp('Duality Check:');
disp(isequal(openedImage, ~closedComplementImage));
