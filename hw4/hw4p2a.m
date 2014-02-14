function hw4p2a
sigma = 3;

cfd = [1 0 -1];
dgauss = zeros(1,32);
for x=-16:1:15
    dgauss(x+17) = exp(-(x^2)/(2*sigma^2));
end

res = conv2(cfd, dgauss);
res = conv2(cfd, res);
res = conv2(cfd, res);

figure;
subplot(2,2,1);
plot(res);
title('Third derivative of 1D Gaussian Function');
subplot(2,2,2);
plot(abs(fftshift(fft2(res))));
title('FFT of Third derivative of 1D Gaussian Function');
dgab = zeros(1,32);
sigma = 2.5;
unaught = .15;
for x=-16:1:15
    dgab(x+17) = exp(-(x^2)/(2*sigma^2)) * sin(2*pi*unaught*x) * .45;
end
subplot(2,2,3);
plot(dgab);
title('Gabor Function');
subplot(2,2,4);
plot(abs(fftshift(fft2(dgab))));
title('FFT of Gabor Function');
end
