% Kishore 20202-27134
% Dip Lab: 14
% Task 02 - Canny Edge Detector
[kishore_img, map] = imread('corns.png');
filter_1 = {'prewitt', 'sobel'};  % Use curly braces for cell array
N = numel(filter_1);
C = cell(1, N);

figure;
for i = 1:N
    subplot(2, N, i);
    sy = fspecial(filter_1{i});
    sx = rot90(sy);
    gx = conv2(kishore_img, sx, 'same');
    gy = conv2(kishore_img, sy, 'same');
    g = sqrt(gx .* gx + gy .* gy);
    imagesc(g);
    title(['Canny Edge - ' char(filter_1(i))]);
    colorbar;
    
    subplot(2, N, N + i);
    imshow(g);
    title(['Canny Edge - ' char(filter_1(i))]);
end
