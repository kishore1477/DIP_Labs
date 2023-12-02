% kishore 27134
% lab # 11
% TASK NO: 01,02,04
% Image Reading
[kishore_img, map] = imread('thar.jfif');
% Addition of Noises in Images
imgGN = imnoise(rgb2gray(kishore_img),'gaussian');
imgSP = imnoise(rgb2gray(kishore_img),'salt & pepper');
% Median Filter on Both
imgMF_GN = medfilt2(imgGN,[5 5]);
imgMF_SP = medfilt2(imgSP,[5 5]);
% For Averaging
maska = ones(5);
maska = maska/sum(maska(:));
% Average/Mean Filtering
imgSF_SP = conv2(imgSP,maska,'same');
imgSF_GN = conv2(imgGN,maska,'same');
subplot(3,2,1),imshow(kishore_img,map),title('Original Image')
% MF = Median filter 
subplot(3,2,3),imshow(imgMF_GN,[]),title('MF using Gaussian')
subplot(3,2,4),imshow(imgMF_SP,[]),title('MF using Salt & Pepper')
subplot(3,2,5),imshow(imgSF_GN,[]),title('Avg F using Gaussian')
subplot(3,2,6),imshow(imgSF_SP,[]),title('Avg F using Salt & Pepper')