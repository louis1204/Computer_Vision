function hw3p1a
noiseImg = randn(256, 256);

[U, V] = meshgrid(-127:1:128, -127:1:128);

tf = (U.^2 + V.^2); %get filter
tf = 1 ./ tf;
tf(128, 128) = 0; %set where x,y = 0 to 0

dft = fft2(noiseImg);   %translate image to frequency domain
dft = fftshift(dft);

fi = dft .* tf;   %apply filter

fi = fftshift(fi);
fi = ifft2(fi);   %translate back to spatial domain
fi = real(fi);

subplot(1,2,1);
imagesc(fi);
colormap('gray');
title('Filtered Image');

subplot(1,2,2);
imagesc(noiseImg);
truesize;
colormap('gray');
title('Original Image');
end