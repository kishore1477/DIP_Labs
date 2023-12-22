% Sample data (replace with your actual message)
data = 'Hello, world!';
binary_data = dec2bin(data, 8);  % Convert to binary

% Create QR code pattern (adjust dimensions based on QR code format)
qr_matrix = zeros(25, 25);  % Initialize empty matrix

% Add finder patterns (top-left, bottom-right) 
qr_matrix(1:5, 1:5) = ones(5, 5);
qr_matrix(21:25, 21:25) = ones(5, 5);

% Embed data (using reshape to match dimensions)
qr_matrix(11:15, 11:15) = reshape(binary_data(1:25), 5, 5);

% Resize and display
qr_image = imresize(qr_matrix, [100, 100]);  % Adjust size as needed
imshow(qr_image);
