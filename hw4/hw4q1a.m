function hw4q1a
j = 1i;
sigma = 2;
unaught = 0.15;
gabor1d = @(x)(gabor1dfun(x,sigma,unaught, j));
figure;
subplot(4,4,1);
fplot(gabor1d, [-16 15]);
title(['j = ', num2str(j), ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught)]);

[x y] = fplot(gabor1d, [-16 15]);
x = x(1:8:end);
y = y(1:8:end);
ffty = (fftshift(abs(fft(y))));
subplot(4,4,2);
plot(x, ffty);
title('FFT of gabor');

j = 1;
sigma = 2;
unaught = 0.0;
gabor1d = @(x)(gabor1dfun(x,sigma,unaught, j));
subplot(4,4,3);
fplot(gabor1d, [-16 15]);
title(['j = ', num2str(j), ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught)]);

[x y] = fplot(gabor1d, [-16 15]);
x = x(1:8:end);
y = y(1:8:end);
ffty = (fftshift(abs(fft(y))));
subplot(4,4,4);
plot(x, ffty);
title('FFT of gabor');

j = 1i;
sigma = 2;
unaught = 0.3;
gabor1d = @(x)(gabor1dfun(x,sigma,unaught, j));
subplot(4,4,5);
fplot(gabor1d, [-16 15]);
title(['j = ', num2str(j), ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught)]);

[x y] = fplot(gabor1d, [-16 15]);
x = x(1:8:end);
y = y(1:8:end);
ffty = (fftshift(abs(fft(y))));
subplot(4,4,6);
plot(x, ffty);
title('FFT of gabor');

j = 1;
sigma = 1;
unaught = 0.15;
gabor1d = @(x)(gabor1dfun(x,sigma,unaught, j));
subplot(4,4,7);
fplot(gabor1d, [-16 15]);
title(['j = ', num2str(j), ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught)]);

[x y] = fplot(gabor1d, [-16 15]);
x = x(1:8:end);
y = y(1:8:end);
ffty = (fftshift(abs(fft(y))));
subplot(4,4,8);
plot(x, ffty);
title('FFT of gabor');

j = 1i;
sigma = 1;
unaught = 0.3;
gabor1d = @(x)(gabor1dfun(x,sigma,unaught, j));
subplot(4,4,9);
fplot(gabor1d, [-16 15]);
title(['j = ', num2str(j), ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught)]);

[x y] = fplot(gabor1d, [-16 15]);
x = x(1:8:end);
y = y(1:8:end);
ffty = (fftshift(abs(fft(y))));
subplot(4,4,10);
plot(x, ffty);
title('FFT of gabor');

j = 1;
sigma = 1;
unaught = 0.3;
gabor1d = @(x)(gabor1dfun(x,sigma,unaught, j));
subplot(4,4,11);
fplot(gabor1d, [-16 15]);
title(['j = ', num2str(j), ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught)]);

[x y] = fplot(gabor1d, [-16 15]);
x = x(1:8:end);
y = y(1:8:end);
ffty = (fftshift(abs(fft(y))));
subplot(4,4,12);
plot(x, ffty);
title('FFT of gabor');

j = 1i;
sigma = 1.2;
unaught = 0.15;
gabor1d = @(x)(gabor1dfun(x,sigma,unaught, j));
subplot(4,4,13);
fplot(gabor1d, [-16 15]);
title(['j = ', num2str(j), ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught)]);

[x y] = fplot(gabor1d, [-16 15]);
x = x(1:8:end);
y = y(1:8:end);
ffty = (fftshift(abs(fft(y))));
subplot(4,4,14);
plot(x, ffty);
title('FFT of gabor');

j = 1;
sigma = 1.2;
unaught = 0.15;
gabor1d = @(x)(gabor1dfun(x,sigma,unaught, j));
subplot(4,4,15);
fplot(gabor1d, [-16 15]);
title(['j = ', num2str(j), ' sigma = ', num2str(sigma), ' unaught = ', num2str(unaught)]);

[x y] = fplot(gabor1d, [-16 15]);
x = x(1:8:end);
y = y(1:8:end);
ffty = fftshift(abs(fft(y)));
subplot(4,4,16);
plot(x, ffty);
title('FFT of gabor');
end

function Y=gabor1dfun(x,sigma,unaught, j)
    if(j == 1)
        Y = exp(-(x^2)/(2*sigma^2)) * cos(2*pi*unaught*x);
    else
        Y = exp(-(x^2)/(2*sigma^2)) * sin(2*pi*unaught*x);
    end
end