function hw2p4c
    firstDiff = [0.5 0 -0.5 0 0 0 0 0];

    subplot(2,2,1);
    stem(firstDiff);
    title(strcat('Original Signal'));
    
    dft = fft(firstDiff);
    dft = fftshift(dft);
    subplot(2,2,2);
    stem(abs(dft));
    title(strcat('DFT magnitude'));
    
    dft = angle(dft);
    subplot(2,2,3);
    stem(dft*180/pi);
    title(strcat('DFT Phase'));
end