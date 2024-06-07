% Read the image
% Change the arguement in imread to read different files
img = imread('StackNinja3.bmp');

% Extract the green channel
red = double(img(:,:,1)) / 255; % Normalize red channel
green = double(img(:,:,2)) / 255; % Normalize green channel
blue = double(img(:,:,3)) / 255; % Normalize blue channel

% Formula to extract green channel after correcting for red and blue channel
greenObjects = green - ((red + blue) / 2); 

% Enhance contrast to improve visibility of extracted objects
enahcnedContrast = imadjust(greenObjects);

% Apply Median filtering for noise reduction
medianFilter = medfilt2(enahcnedContrast);

% Perform top-hat filtering for background correction
tophatFilter = imtophat(medianFilter, strel('disk', 4));

% Convert to binary image
threshold = graythresh(tophatFilter); % Calculate threshold using graythresh function
binaryImg = imbinarize(medianFilter, threshold);

% Remove any small objects using Morphological Opening 
cleanedImg = bwareaopen(binaryImg, 25);

% Apply Watershed Segmentation
segmentationLabels = watershed(-bwdist(~cleanedImg));
segmentationLabels(~cleanedImg) = 0;

finalImg = label2rgb(segmentationLabels, 'jet', 'black', 'shuffle');

% Display the result
figure; imshow(finalImg);