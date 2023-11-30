% Name: kishore 27134
% lAB NO: 07 DIGITAL IMAGE PROCESSING
% TASK NO: 07
% Read an image file
kishore_I = imread('corns.png');
% Compute the Fourier transform of the image
F = fft2(double(kishore_I));
% Compute magnitude and phase components
magnitude = abs(F);
phase = angle(F);
% Plot magnitude and phase on a common plot
subplot(2, 1, 1);
imshow(log(1 + magnitude), []);
title('Magnitude Spectrum (log scale)');
colormap jet;
colorbar;
subplot(2, 1, 2);
imshow(phase, []);
title('Phase Spectrum');
colormap jet;
colorbar;
sgtitle('Magnitude and Phase Spectra of the Image');