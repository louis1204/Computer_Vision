function hw2p4b
delta = [];

xnaught = [0, pi/4, pi/2, pi];

for j=1:size(xnaught, 2)
    for i=0:7
        delta = [delta cos(xnaught(1, j)*i)];
    end
    subplot(4,3,(j-1)*3+1);
    stem([0:7], delta);
    title(strcat('Original Signal w naught = ', num2str(xnaught(1,j))));
    
    dft = fft(delta);
    dft = fftshift(dft);
    subplot(4,3,(j-1)*3+2);
    stem([0:7], abs(dft));
    title(strcat('DFT magnitudew w naught = ', num2str(xnaught(1,j))));
    
    dft = angle(dft);
    subplot(4,3,(j-1)*3+3);
    stem([0:7],dft*180/pi);
    title(strcat('DFT Phase w naught = ', num2str(xnaught(1,j))));
    delta = [];
end

end