img = imread('nature.jpg');      % likely uint8 RGB
grayImg = rgb2gray(img);                    % uint8
% work in double in [0,1]
g = im2double(grayImg);                     % m-by-n double ∈ [0,1]
rgbD = im2double(img);                      % m-by-n-by-3 double ∈ [0,1]
% Negative (use the grayscale or RGB as needed)
negImg = 1 - g;                             % double ∈ [0,1]
% Log transform (apply to grayscale)
c = 1;
logImg = c * log(1 + g);
logImg = mat2gray(logImg);                  % ensure [0,1] for display
% Power-law (gamma) transform — safe now because g is double
gamma = 0.5;
powerImg = g .^ gamma;                      % double ∈ [0,1]
% Contrast stretch (on grayscale double)
rmin = min(g(:));
rmax = max(g(:));
stretchImg = (g - rmin) / (rmax - rmin);    % already in [0,1]
% Display
figure;
subplot(2,4,1), imshow(rgbD),      title('Original RGB')
subplot(2,4,2), imshow(g),         title('Grayscale')
subplot(2,4,3), imshow(negImg),    title('Negative')
subplot(2,4,4), imshow(logImg),    title('Log Transform')
subplot(2,4,5), imshow(powerImg),  title('Gamma Transform')
subplot(2,4,6), imshow(stretchImg),title('Contrast Stretched')





