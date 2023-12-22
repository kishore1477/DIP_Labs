% Kishore 27134
% Lab 13 DIP
% Task 04 Opening
kishore_img = imread('thar.jfif');
I_BI = im2bw(kishore_img);
SE_Dia= strel('diamond', 5);
eroded_Image = imerode(I_BI, SE_Dia);
dilated_Image = imdilate(eroded_Image, SE_Dia);
figure;
subplot(2, 3, 1);
imshow(kishore_img), title('Original')
subplot(2, 3, 2);
imshow(I_BI), title('Binarized')
subplot(2, 3, 4);
imshow(eroded_Image), title('Eroded, Diamond 5')
subplot(2, 3, 6);
imshow(dilated_Image), title('Opening Dilated, Diamond 5')
subplot(2, 3, 3);
imshow(getnhood(SE_Dia)), title('Structural, Diamond');