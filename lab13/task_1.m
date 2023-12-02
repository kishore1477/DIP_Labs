clc
clear all
close all

%% Image Reading & Conversion:
% read image 
I = imread('corns.png');

% convert to binary 
I_BI = im2bw(I); 

%% Structure Defining
%% Diamond Case:
% Dimension: 5
% create structuring element 
SE_Dia = strel('diamond',5);
% Applying errosion
dilate_Image = imdilate(I_BI,SE_Dia);

% % Dimension: 11
% % create structuring element 
% SE_Dia = strel('diamond',11);
% % Applying errosion
% dilate_Image = imdilate(I_BI,SE_Dia);

%% Square Case:
% % Dimension: 5
% % create structuring element 
% SE_Sq = strel('square',5);
% % Applying errosion
% dilate_Image = imdilate(I_BI,SE_Sq);

% % Dimension: 11
% % create structuring element 
% SE_Sq = strel('square',11);
% % Applying errosion
% dilate_Image = imdilate(I_BI,SE_Sq);


%% Disk Case:
% % Dimension: 5
% % create structuring element 
% SE_Dis = strel('disk',5);
% % Applying errosion
% dilate_Image = imdilate(I_BI,SE_Dis);

% % Dimension: 11
% % create structuring element 
% SE_Dis = strel('disk',11);
% % Applying errosion
% dilate_Image = imdilate(I_BI,SE_Dis);

subplot(1,4,1)
imshow(I)

subplot(1,4,2)
imshow(I_BI)

subplot(1,4,3)
imshow(dilate_Image)
% Diamond Shape (5x5) = DS
title('dilated Image DS  ')

subplot(1,4,4)
imshow(getnhood(SE_Dia));
title('Structural Element DS');