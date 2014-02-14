function hw2p4a
delta = zeros(1,8);

xnaught = [0, 1, 4];

for j=1:size(xnaught, 2)
    delta(xnaught(1,j) + 1) = 1;

    subplot(3,3,(j-1)*3+1);
    stem([0:7], delta);
    title(strcat('Original Signal x naught = ', num2str(xnaught(1,j))));
    
    dft = fft(delta);
    dft = fftshift(dft);
    subplot(3,3,(j-1)*3+2);
    stem([0:7], abs(dft));
    title(strcat('DFT magnitude x naught = ', num2str(xnaught(1,j))));
    
    dft = angle(dft);
    subplot(3,3,(j-1)*3+3);
    stem([0:7], dft*180/pi);
    title(strcat('DFT Phase x naught = ', num2str(xnaught(1,j))));
    delta = zeros(1,8);
end

end