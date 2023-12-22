% Read raw bytes
fid = fopen('generatedQrCode.png', 'rb');  % Replace with your image file
raw_bytes = fread(fid, inf, 'uint8');
fclose(fid);

% Reshape into 2D array (adjust width and height)
width = 100;  % Replace with actual width
height = 100;  % Replace with actual height
image_data = reshape(raw_bytes, width, height);

% Visualize image
imshow(image_data);

% Analyze structure (adjust header length and color channel extraction as needed)
header_length = 50;  % Adjust based on visual analysis
image_data = image_data(header_length+1:end, :);  % Skip header
fprintf(image_data)
red_channel = image_data(:, 1:3:end);
green_channel = image_data(:, 2:3:end);
blue_channel = image_data(:, 3:3:end);

% Decode QR code (research and implement QR code decoding algorithms here)
% ... (Fill in the decoding logic based on QR code specifications)

% Extract decoded text


%  disp(decoded_text);
