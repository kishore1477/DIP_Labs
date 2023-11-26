% Name: kishore 27134
% Lab 06
% Task 04

function kishore(kishore_I)
    % Load the image 'Corns.png' and store it in the variable 'kishore_I'
    kishore_I = imread('Corns.png');

    % Step 1: Add Gaussian noise to the original image and create a corrupted image
    % Gaussian noise with zero mean and 0.1 variance is added to 'kishore_I'
    NoisyImage = imnoise(kishore_I, 'gaussian', 0, 0.1);

    % Step 2: Display the Original and Noisy Image
    

    subplot(4, 3, 1)
    imagesc(kishore_I) % Display the original image
    axis image % Maintain the aspect ratio
    colormap gray % Set the colormap to grayscale
    colorbar % Display the colorbar
    title('Original Image');

    subplot(4, 3, 2)
    imagesc(NoisyImage) % Display the Noisy image
    axis image % Maintain the aspect ratio
    colormap gray % Set the colormap to grayscale
    colorbar % Display the colorbar
    title('Noisy Image');

    % Step 3: Create a sum image with zeros
    kishore_SumImage = zeros(size(kishore_I));

    % Task # 01: Repeat for No of Iterations = 50, 100, 1000
    No_of_Iterations = [50, 100, 1000];
    Std_dev = [0.1, 0.4, 0.8];
    A = 3;

    for k = 1:length(Std_dev)
        for j = 1:length(No_of_Iterations)
            for i = 1:No_of_Iterations(j)
                NoisyImage = imnoise(kishore_I, 'gaussian', 0, Std_dev(k));
                kishore_SumImage = kishore_SumImage + double(NoisyImage);
            end

            % Step 6: Calculate the average image
            kishore_AverageImage = kishore_SumImage / No_of_Iterations(j);

            subplot(4, 3, A)
            imagesc(kishore_AverageImage) % Display the Average image
            axis image % Maintain the aspect ratio
            colormap gray % Set the colormap to grayscale
            colorbar % Display the colorbar
            title(['Avg (', num2str(No_of_Iterations(j)), 'Dev=', num2str(Std_dev(k)), ')']);

            A = A + 1;
            kishore_SumImage = zeros(size(kishore_I)); % Reset sum image
        end
    end
end
