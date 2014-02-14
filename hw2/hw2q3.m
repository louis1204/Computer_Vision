function hw2q3
img = double(imread('Fig1022(a)(building_original).tif'));

sig = 2;
H = fspecial('log', 15, sig);
%plot the mesh plot of -H
figure
mesh(-H);
title('Isotropic Laplacian of Gaussian Kernel');

%conv image with laplacian
F = conv2(img, -H, 'same')
thresh = zeros(size(F));

%thresh at 0
for i=1:size(F, 1)
    for j=1:size(F,2)
        if(F(i,j) >= 0)
            thresh(i,j) = 1;
        end
    end
end

figure
subplot(2,2,1);
imshow(imread('Fig1022(a)(building_original).tif'));
title('Original');

subplot(2,2,2);
imshow(F);
title('Convolved with Laplacian');

subplot(2,2,3);
imshow(thresh);
title('Filtered with thresh = 0');

figure;
contour(F, [0 0], 'r');
end