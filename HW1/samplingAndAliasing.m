function samplingAndAliasing()
    N = 16;
    incarray = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];
    
    figure;
    for k = 0:16
        hold on;
        subplot(5,4, k+1);
        fh = @(x)(sampling(x,k,N));
        fplot(fh,[0,16]);
        stemval = arrayfun(fh,incarray);
        hold on;
        stem(incarray,stemval);
        title(strcat('k=', num2str(k)));
    end
end

function f = sampling(x, k, N)
    f = cos(x * omega(k, N));
end

function w = omega(k, N)
    w = 2 * pi * k / N;
end