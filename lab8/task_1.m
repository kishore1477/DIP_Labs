% Name: kishore 27132
% Lab: 08
% Original image
original_image = imread('corns.png'); % Load your image
% Define transformation matrices
% Translation (move the image 50 pixels right and 30 pixels down)
translation_matrix = [1, 0, 0; 0, 1, 0; 0, 0, 1];
% Rotation (rotate the image by 45 degrees)
theta = deg2rad(45); % Convert degrees to radians
rotation_matrix = [cos(theta), -sin(theta), 0; sin(theta), cos(theta), 0; 0, 0, 1];
% Scaling (scale the image by a factor of 2 in the x-axis and 1.5 in the y-axis)
scaling_matrix = [2, 0, 0; 0, 1.5, 0; 0, 0, 1];
% Shearing (shear the image by 0.2 in the x-axis and 0.3 in the y-axis)
shearing_matrix = [1, 0.2, 0; 0.3, 1, 0; 0, 0, 1];
% rigid (shear the image by 0.2 in the x-axis and 0.3 in the y-axis)
rigid_matrix = [1, 0.2, 0; 0.3, 1, 0; 0, 0, 1];
% Apply the transformations
translated_image = imwarp(original_image, affine2d(translation_matrix));
rotated_image = imwarp(original_image, affine2d(rotation_matrix));
scaled_image = imwarp(original_image, affine2d(scaling_matrix));
sheared_image = imwarp(original_image, affine2d(shearing_matrix));
rigid_image = imwarp(original_image, affine2d(rigid_matrix));
% Display the original and transformed images
subplot(2, 3, 1), imshow(original_image), title('Original')
subplot(2, 3, 2), imshow(translated_image), title('Translated')
subplot(2, 3, 3), imshow(rotated_image), title('Rotated')
subplot(2, 3, 4), imshow(scaled_image), title('Scaled')
subplot(2, 3, 5), imshow(sheared_image), title('Sheared')
subplot(2, 3, 6), imshow(rigid_image), title('rigid')