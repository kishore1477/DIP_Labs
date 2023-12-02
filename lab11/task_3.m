%  kishore 27134
% TASK NO: 03
clc
clear all
close all
% Image Reading
[kishore_img, map] = imread('shirt.jpg');
% Addition of Noises in Images
imgGN = imnoise(rgb2gray(kishore_img),'gaussian');

% Median Filter on Both
imgMF_GN = medfilt2(imgGN,[5 5]);

% For Averaging
maska = ones(5);
maska = maska/sum(maska(:));
% Average/Mean Filtering
imgSF_GN = conv2(imgGN,maska,'same');
subplot(3,2,1),imshow(kishore_img,map),title('Original Image')
subplot(3,2,3),imshow(imgMF_GN,[]),title('Median Filter using Gaussian')
subplot(3,2,4),imshow(imgSF_GN,[]),title('Averaging Filter using Gaussian')