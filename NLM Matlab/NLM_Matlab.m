% Script para realizar un proceso de denoising empleando non-local-means

% Leemos la imagen 
I = imread('F16_GT.png');

% Aplicamos ruido
noisyImage = imnoise(I,'gaussian',0,0.005);

% Eliminamos ruido
[filteredImage,estDoS] = imnlmfilt(noisyImage);

% Mostramos imagen
imshow(filteredImage)
title(['Estimated Degree of Smoothing, ', 'estDoS = ',num2str(estDoS)])