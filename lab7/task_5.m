% Name: kishore 27134
% lAB NO: 07 
% TASK NO: 05
% Load the natural scene image
natural_scene = imread('corns.png');

% Load the texture image
texture_image = imread('corns.png');
% Compute the DFT of the natural scene image
dft_natural_scene = fft2(double(natural_scene));
% Compute the magnitude and phase of the DFT for the natural scene image
magnitude_natural_scene = abs(dft_natural_scene);
phase_natural_scene = angle(dft_natural_scene);
% Compute the DFT of the texture image
dft_texture_image = fft2(double(texture_image));
% Compute the magnitude and phase of the DFT for the texture image
magnitude_texture_image = abs(dft_texture_image);
phase_texture_image = angle(dft_texture_image);
% Display the magnitude and phase of the DFT for the natural scene image
figure;
subplot(2, 2, 1);
imshow(log(1 + magnitude_natural_scene), []);
title('Magnitude Spectrum (Natural Scene)');
colormap jet;
colorbar;
subplot(2, 2, 2);
imshow(phase_natural_scene, []);
title('Phase Spectrum (Natural Scene)');
colormap jet;
colorbar;
% Display the magnitude and phase of the DFT for the texture image
subplot(2, 2, 3);
imshow(log(1 + magnitude_texture_image), []);
title('Magnitude Spectrum (Texture)');
colormap jet;
colorbar;
subplot(2, 2, 4);
imshow(phase_texture_image, []);
title('Phase Spectrum (Texture)');
colormap jet;
colorbar;
sgtitle('Magnitude and Phase Spectra of Natural Scene and Texture Images');