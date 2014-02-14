function [E, M, A] = hw2p2b(I, sigma, tau)
[image map] = imread(I);
image = im2double(image);

%get the kernel
sig = GetPascalTriangleRow(sigma);
%flip
sig= fliplr(sig);
sig = sig' * sig;
sig = (1/sqrt(2*pi*sigma)) * sig;
%pad array
boxArray = padarray(image, [(size(sig,2)-1)/2, (size(sig,2)-1)/2]);

%result of convolution
res = zeros(size(image, 1), size(image, 2));

%begin convolution
for i=1:size(image, 1)
    for j=1:size(image, 2)
        temp = sig .* boxArray(i:i+(size(sig,2)-1), j:j+(size(sig,2)-1)); % so we start at a row of non zeros
        res(i, j) = SumMatrix(temp);
    end
end

%end convolution
figure;
subplot(2,2,1);
imshow(image);
title(strcat('Original Sigma^2:', num2str(sigma)));

subplot(2,2,2);
imshow(res, map);
title(strcat('Blurred Sigma^2:', num2str(sigma)));

%begin using Sobel operator to find gradient magnitude and angle
boxArray = padarray(res, [1, 1]);
Gx = [1 0 -1; 2 0 -2; 1 0 -1];
Gy = [1 2 1; 0 0 0; -1 -2 -1];
%flip kernels
Gx = fliplr(Gx);
Gy = fliplr(Gy);
gradientMag = zeros(size(res));
theta = zeros(size(res));
%convolve
for i=1:size(gradientMag, 1)
    for j=1:size(gradientMag, 2)
        temp = boxArray(i:i+2, j:j+2);
        tempX = Gx .* temp;
        tempY = Gy .* temp;
        tempX = SumMatrix(tempX);
        tempY = SumMatrix(tempY);
        gradientMag(i,j) = sqrt(tempX^2 + tempY^2);
        angle = tempY/tempX;
        theta(i, j) = atan(angle); %since arctan isn't working for me...
    end
end
A = theta;
M = gradientMag;
%end gradient magnitude

%convert andles from radian to 0-180 degrees
boxArray = padarray(gradientMag, [1, 1]);
degs = theta;
cannyImg = zeros(size(image));
for i=1:size(degs,1)
    for j=1:size(degs,2)
        degs(i,j) = radtodeg(theta(i,j));
        if(degs(i,j) < 0)
           % degs(i,j) = 360 + degs(i,j);
        end
        if(degs(i,j) >= -22.5 && degs(i,j) < 22.5)   %check if gradient angle is in the 45 deg dir
            if(gradientMag(i,j) >= boxArray(i+1, j) && gradientMag(i,j) >= boxArray(i+1,j+2))   %check if edge
                if(gradientMag(i,j) >= tau)
                    cannyImg(i,j) = 1;
                end
            end
        elseif(degs(i,j) >= 22.5 && degs(i,j) < 66.5)   %check if gradient angle is in the 45 deg dir
            if(gradientMag(i,j) > boxArray(i, j+2) && gradientMag(i,j) > boxArray(i+2,j))   %check if edge
                if(gradientMag(i,j) >= tau)
                    cannyImg(i,j) = 1;
                end
            end
        elseif(degs(i,j) >= 66.5 && degs(i,j) < 110.5) %check if gradient angle is in the 90 deg dir
            if(gradientMag(i,j) > boxArray(i, j+1) && gradientMag(i,j) > boxArray(i+2,j+1))   %check if edge
                if(gradientMag(i,j) >= tau)
                    cannyImg(i,j) = 1;
                end
            end
        elseif(degs(i,j) >= 110.5 && degs(i,j) < 154.5) %check if gradient angle is in the 135 deg dir
            if(gradientMag(i,j) > boxArray(i, j) && gradientMag(i,j) > boxArray(i+2,j+2))   %check if edge
                if(gradientMag(i,j) >= tau)
                    cannyImg(i,j) = 1;
                end
            end    
        end
    end
end

E = cannyImg;
subplot(2,2,3);
imshow(cannyImg);
title(strcat('Edges Sigma^2:', num2str(sigma)));
end

function res = GetPascalTriangleRow(sigma)
N = (4*sigma) + 1;

res = [];

for i = 0:N-1
    res = [res nchoosek(N-1, i)];
end

end

function res = SumMatrix(M)
res = 0;
for i=1:size(M, 1)
    for j=1:size(M, 2)
        res = res + M(i, j);
    end
end
end