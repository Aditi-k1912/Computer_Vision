

img = imread('nature.jpg');
figure; imshow(img);
title('original image');





%smoothing using mean filter
kernel_mean = ones(3,3)/9;
smooth_mean = imfilter(img,kernel_mean,'same');
figure; imshow(uint8(smooth_mean));
title('smooth image using mean ');


%smoothing using gaussian
sigma = 1;
kernel_gaussian = fspecial('gaussian',[3,3],sigma);
smooth_gaussian = imfilter(img,kernel_gaussian,'same');
figure; imshow(uint8(smooth_gaussian));
title('Smoothed image using gaussian');

%figure;
%subplot(2,4,1), imshow(img),      title('Original RGB')
%subplot(2,4,2), imshow(uint8(smooth_mean)),         title('smooth image using mean')
%subplot(2,4,3), imshow(uint8(smooth_gaussian)),    title('Smoothed image using gaussian')