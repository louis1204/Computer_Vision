function hw3p2a

image = imread('Fig4.41(a).jpg');
template = imread('Fig4.41(b).jpg');
figure;
subplot(3,2,1);
imagesc(image);     %show the original image
colormap('gray');
axis image;
title('image');
subplot(3,2,2);

imagesc(template);  %show the template
colormap('gray');
axis image;
title('template');

padImg = padarray(image, [298-size(image,1) 298-size(image,2)], 'post');    %pad images to 298 x 298
padTemplate = padarray(template, [298-size(template,1) 298-size(template,2)], 'post'); 

subplot(3,2,3);
imagesc(padImg);
colormap('gray');
axis image;
title('padded image');

subplot(3,2,4);
imagesc(padTemplate);
colormap('gray');
axis image;
title('padded template');


fimage = fft2(padImg);

ftemp = fft2(padTemplate);
ftemp = conj(ftemp); %find the complex conjugate for the template

corr = fimage .* ftemp;
corr = ifft2(corr);
corr = real(corr);

subplot(3,2,5);
imagesc((corr));
colormap('gray');
axis image;
title('correlation function');

%find the highest value row
max = intmin;
row = 0;
for i=1:size(corr,1)
    for j=1:size(corr,2)
        if(corr(i,j) > max)
            max = corr(i,j);
            row = i;
        end
    end
end
subplot(3,2,6);
plot(corr(row,:));

%2b
rotatetemp = rot90(template);

spatial = conv2(rotatetemp, image, 'full');
figure;
imagesc(spatial);
colormap('gray');
axis image;
title('2b verification');
end