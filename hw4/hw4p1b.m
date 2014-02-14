function hw4p1b
evenorodd = 1i;
sigma = 2;
unaught = 0.15;
vnaught = 0.3;
[x,y] = meshgrid(-16:1:15);
gab = zeros(size(x));

for i=1:size(gab,1)
    for j=1:size(gab,2)
        gab(i,j) = gabor2dfun(x(i,j), y(i,j), sigma, unaught, vnaught, evenorodd);
    end
end

figure;
subplot(4,4,1);
imagesc(gab);
colormap('gray');
title(['ODD', ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught), ' vnaught = ', num2str(vnaught)]);

ffty = (fftshift(abs(fft2(gab))));
subplot(4,4,2);
imagesc(ffty);
colormap('gray');
title('FFT of gabor');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
evenorodd = 1;
sigma = 2;
unaught = 0.0;
vnaught = 0.15;
[x,y] = meshgrid(-16:1:15);
gab = zeros(size(x));

for i=1:size(gab,1)
    for j=1:size(gab,2)
        gab(i,j) = gabor2dfun(x(i,j), y(i,j), sigma, unaught, vnaught, evenorodd);
    end
end

subplot(4,4,3);
imagesc(gab);
colormap('gray');
title(['EVEN', ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught), ' vnaught = ', num2str(vnaught)]);

ffty = (fftshift(abs(fft2(gab))));
subplot(4,4,4);
imagesc(ffty);
colormap('gray');
title('FFT of gabor');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
evenorodd = 1i;
sigma = 2;
unaught = 0.3;
vnaught = 0.3;
[x,y] = meshgrid(-16:1:15);
gab = zeros(size(x));

for i=1:size(gab,1)
    for j=1:size(gab,2)
        gab(i,j) = gabor2dfun(x(i,j), y(i,j), sigma, unaught, vnaught, evenorodd);
    end
end

subplot(4,4,5);
imagesc(ffty);
colormap('gray');
title(['ODD', ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught), ' vnaught = ', num2str(vnaught)]);

ffty = (fftshift(abs(fft2(gab))));
subplot(4,4,6);
imagesc(ffty);
colormap('gray');
title('FFT of gabor');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
evenorodd = 1;
sigma = 1;
unaught = 0.15;
vnaught = 0.0;
[x,y] = meshgrid(-16:1:15);
gab = zeros(size(x));

for i=1:size(gab,1)
    for j=1:size(gab,2)
        gab(i,j) = gabor2dfun(x(i,j), y(i,j), sigma, unaught, vnaught, evenorodd);
    end
end

subplot(4,4,7);
imagesc(ffty);
colormap('gray');
title(['EVEN', ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught), ' vnaught = ', num2str(vnaught)]);

ffty = real(fftshift(abs(fft2(gab))));
subplot(4,4,8);
imagesc(ffty);
colormap('gray');
title('FFT of gabor');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
evenorodd = 1i;
sigma = 1;
unaught = 0.0;
vnaught = 0.3;
[x,y] = meshgrid(-16:1:15);
gab = zeros(size(x));

for i=1:size(gab,1)
    for j=1:size(gab,2)
        gab(i,j) = gabor2dfun(x(i,j), y(i,j), sigma, unaught, vnaught, evenorodd);
    end
end

subplot(4,4,9);
imagesc(ffty);
colormap('gray');
title(['ODD', ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught), ' vnaught = ', num2str(vnaught)]);

ffty = real(fftshift(abs(fft2(gab))));
subplot(4,4,10);
imagesc(ffty);
colormap('gray');
title('FFT of gabor');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
evenorodd = 1;
sigma = 1;
unaught = 0.3;
vnaught = 0.3;
[x,y] = meshgrid(-16:1:15);
gab = zeros(size(x));

for i=1:size(gab,1)
    for j=1:size(gab,2)
        gab(i,j) = gabor2dfun(x(i,j), y(i,j), sigma, unaught, vnaught, evenorodd);
    end
end

subplot(4,4,11);
imagesc(ffty);
colormap('gray');
title(['EVEN', ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught), ' vnaught = ', num2str(vnaught)]);

ffty = (fftshift(abs(fft2(gab))));
subplot(4,4,12);
imagesc(ffty);
colormap('gray');
title('FFT of gabor');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
evenorodd = 1i;
sigma = 1.2;
unaught = 0.15;
vnaught = 0.3;
[x,y] = meshgrid(-16:1:15);
gab = zeros(size(x));

for i=1:size(gab,1)
    for j=1:size(gab,2)
        gab(i,j) = gabor2dfun(x(i,j), y(i,j), sigma, unaught, vnaught, evenorodd);
    end
end

subplot(4,4,13);
imagesc(ffty);
colormap('gray');
title(['ODD', ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught), ' vnaught = ', num2str(vnaught)]);

ffty = (fftshift(abs(fft2(gab))));
subplot(4,4,14);
imagesc(ffty);
colormap('gray');
title('FFT of gabor');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
evenorodd = 1;
sigma = 1.2;
unaught = 0.15;
vnaught = 0.3;
[x,y] = meshgrid(-16:1:15);
gab = zeros(size(x));

for i=1:size(gab,1)
    for j=1:size(gab,2)
        gab(i,j) = gabor2dfun(x(i,j), y(i,j), sigma, unaught, vnaught, evenorodd);
    end
end

subplot(4,4,15);
imagesc(ffty);
colormap('gray');
title(['EVEN', ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught), ' vnaught = ', num2str(vnaught)]);

ffty = (fftshift(abs(fft2(gab))));
subplot(4,4,16);
imagesc(ffty);
colormap('gray');
title('FFT of gabor');
end

function Y=gabor2dfun(x, y ,sigma,unaught, vnaught, j)
    if(j == 1)
        Y = exp(-(sqrt(((x^2) + (y^2))^2))/(2*sigma^2)) * cos(2*pi*(unaught*x + vnaught*y));
    else
        Y = exp(-(sqrt(((x^2) + (y^2))^2))/(2*sigma^2)) * sin(2*pi*(unaught*x + vnaught*y));
    end
end