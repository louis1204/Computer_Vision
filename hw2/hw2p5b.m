function hw2p5b
img1 = imread('vlcsnap-2013-10-15-04h10m03s179.png');
img = double(rgb2gray(img1));
dft = fft2(img);
dft = abs(dft);
dft = log(dft);

dft = fftshift(dft);

subplot(1,2,1);
imshow(img1);

subplot(1,2,2);
imshow(dft);
imagesc(dft, [5 13]);
end
