function hw2p4d
delta = [];

sigma = [1, 2, 3];

for j=1:size(sigma, 2)
    delta = GetPascalTriangleRow(sigma(1, j))
    delta = [delta zeros(1, 64 - size(delta))]
    subplot(3,3,(j-1)*3+1);
    stem(delta);
    title(strcat('Original Signal sigma^2 = ', num2str(sigma(1,j))));
    
    dft = fft(delta);
    dft = fftshift(dft);
    subplot(3,3,(j-1)*3+2);
    stem(abs(dft));
    title(strcat('DFT magnitude sigma^2 = ', num2str(sigma(1,j))));
    
    dft = angle(dft);
    subplot(3,3,(j-1)*3+3);
    stem(dft*180/pi);
    title(strcat('DFT Phase sigma^2 = ', num2str(sigma(1,j))));
end

end

function res = GetPascalTriangleRow(sigma)
N = (4*sigma) + 1;

res = [];

for i = 0:N-1
    res = [res nchoosek(N-1, i)];
end
res = res .* 2^(-(N-1));
end