% Bilal 27141
% DIP Lab#13
% TAKS#02(a) 5x5 Dilated
kishore_img = imread('Coins.png');
I_BI = im2bw(kishore_img);
shapes = ["diamond", "square", "disk"];
N = numel(shapes);
C = cell(1, N);
A = 1;
for i = 1:N
Strl_img = strel(shapes{i}, 5);
% Dilation
dilate_Image = imdilate(I_BI, Strl_img);
% Plotting
subplot(3, 4, A)
imshow(kishore_img), title('Original')
subplot(3, 4, A + 1)
imshow(I_BI), title('Binary')
subplot(3, 4, A + 2)
imshow(dilate_Image), title(['Dilated ' char(shapes(i))])
subplot(3, 4, A + 3)
imshow(getnhood(Strl_img)), title([char(shapes(i)) ' 5'])
A = A + 4;
end