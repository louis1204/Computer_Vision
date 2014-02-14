function movingAverages()
    img335a = double(imread('Fig0335(a)(ckt_board_saltpep_prob_pt05).tif'));

    %step edge
    h_box = [1,1,1]/3;
    x = [zeros(1,50),ones(1,50)];
    noise = 0.05*randn(1,100);
    xnoise = x + noise;
    
    %img335a
    x2 = img335a(375,:);
    
    %5th row of pascal
    h_pasc = [1,4,6,4,1];
    h_pasc = h_pasc ./ sum(h_pasc);
    
    %step edge [1,1,1]
    xbox = convolve1D(xnoise,h_box);
    
    %step edge [1,4,6,4,1]
    xpasc = convolve1D(xnoise,h_pasc);
    
    %img335a [1,1,1]
    x2box = convolve1D(x2,h_box);
    
    %img335a [1,4,6,4,1]
    x2pasc = convolve1D(x2,h_pasc);
    
    %display
    figure;
    subplot(4,2,1), plot(xnoise);
    title('noisy step edge');
    hold on;
    subplot(4,2,2), plot(x2);
    xlim([0,size(x2,2)]);
    title('row 375 figure 3.35(a)');
    hold on;
    
    subplot(4,2,3), plot(xbox);
    title('step edge box filter');
    hold on;
    subplot(4,2,4), plot(x2box);
    xlim([0,size(x2box,2)]);
    title('figure box filter');
    hold on;
    
    subplot(4,2,5), plot(xpasc);
    title('step edge pascal');
    hold on;
    subplot(4,2,6), plot(x2pasc);
    xlim([0,size(x2pasc,2)]);
    title('figure pascal');
    hold on;
    
    subplot(4,2,7), stem(h_box);
    title('box filter');
    hold on;
    subplot(4,2,8), stem(h_pasc);
    title('pascal');
    
end

function newimg = convolve1D(img, filter)
    newimg = zeros(size(img));
    n = size(filter,2);
    n2 = floor(n/2);
    for i = n2+1 : size(img,2) - n2
        %newimg(i) = mean(img(i-n2:i+n2));
        newimg(i) = img(i-n2:i+n2)*filter';
    end
end
