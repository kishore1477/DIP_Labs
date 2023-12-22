% Kishore  20202-27134
% DIP Lab#13
% TAKS#01 (a) 5x5 Eroded
kshore_img = imread('corns.png');
I_BI = im2bw(kshore_img);
shapes = ["diamond", "square", "disk"];
N = numel(shapes);
C = cell(1, N);
A = 1;
for i = 1:N
Strl_img = strel(shapes{i}, 5);
erode_Image = imerode(I_BI, Strl_img);
% Plotting
subplot(3, 4, A)
imshow(kshore_img), title('Original')
subplot(3, 4, A + 1)
imshow(I_BI), title('Binary')
subplot(3, 4, A + 2)
imshow(erode_Image), title(['Eroded ' char(shapes(i))])
subplot(3, 4, A + 3)
imshow(getnhood(Strl_img)), title([char(shapes(i)) ' 5'])
A = A + 4;
end