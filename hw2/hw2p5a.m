function hw2p5a

rectangle = double(imread('Fig0424(a)(rectangle).png'));

blown = imread('Fig0429(a)(blown_ic).png');

dft = fft2(rectangle);
dft = abs(dft);
dft = log(dft);

dft = fftshift(dft);

subplot(1,2,1);
imshow(dft);
imagesc(dft, [5 13]);

%apply logarithmic transformation

mags = abs(dft);
max = intmin;
%find the max mag
for i=1:size(mags,1)
    for j=1:size(mags,2)
        if(mags(i, j) > max)
            max = mags(i, j);
        end
    end
end

c = 255/log(1+abs(max));

res = zeros(size(rectangle));

for i=1:size(res,1)
    for j=1:size(res,2)
        res(i,j) = c * 1+abs(rectangle(i,j));
    end
end

subplot(1,2,2);
imshow(res);
imagesc(res, [5 13]);


figure;
dft = fft2(blown);
dft = abs(dft);
dft = log(dft);

dft = fftshift(dft);

subplot(1,2,1);
imshow(dft);
imagesc(dft, [5 13]);

subplot(1,2,2);
imshow(blown);
end