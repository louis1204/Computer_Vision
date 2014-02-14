function movingDifferences()
    img335a = double(imread('Fig0335(a)(ckt_board_saltpep_prob_pt05).tif'));
    c2diff = [1,0,-1]/2;
    
    img335arow238 = img335a(375,:);
    
    diff = convolve1D(img335arow238,c2diff);
    
    %display
    figure;
    subplot(1,2,1), plot(img335arow238);
    xlim([0,size(img335arow238,2)]);
    title('figure 3.35(a)');
    hold on;
    subplot(1,2,2), plot(diff);
    xlim([0,size(diff,2)]);
    title('figure 3.35(a) first deriv');
    
end

function newimg = convolve1D(img, filter)
    newimg = zeros(size(img));
    n = size(filter,2);
    n2 = floor(n/2);
    for i = n2+1 : size(img,2) - n2
        newimg(i) = img(i-n2:i+n2)*filter';
    end
end