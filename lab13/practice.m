clc
clear all
close all

%% Gradient:
[img,map]=imread('corns.png');
sy = fspecial('prewitt') % sobel mask for horizontal edges
sx = rot90(sy) % rotate it to obtain the mask for vertical edges

gx = conv2(img,sx,'same'); % estimation of gradient in x-direction
gy = conv2(img,sy,'same'); % estimation of gradient in y-direction
g = sqrt(gx.*gx+gy.*gy); % estimation of gradient in total

imagesc(g) % display the obtained gradient
imtool(img,[])
imtool(g,[])

%% Laplacian:
% Define the Laplacian filter.
Laplacian = [0 1 0; 1 -4 1; 0 1 0];
 
% Convolve the image using Laplacian Filter
Lap_Img = conv2(img, Laplacian, 'same');
 
% Display the image.
imtool(Lap_Img,[]);