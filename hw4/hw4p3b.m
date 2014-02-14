function hw4p3b
hist1 = getHist('Fig0630(01)(strawberries_fullcolor).tif');
hist2 = getHist('Fig0630(01)(strawberries_fullcolor).tif');
hist3 = getHist('Fig0630(01)(strawberries_fullcolor).tif');
hist4 = getHist('Fig0630(01)(strawberries_fullcolor).tif');
hist5 = getHist('Fig0630(01)(strawberries_fullcolor).tif');

subplot(3,2,1);
bar(hist1);
title('Histogram 1. 1-32 Red, 32-64 Green, 64-96 Blue');
subplot(3,2,2);
bar(hist2);
title('Histogram 2. 1-32 Red, 32-64 Green, 64-96 Blue');
subplot(3,2,3);
bar(hist3);
title('Histogram 3. 1-32 Red, 32-64 Green, 64-96 Blue');
subplot(3,2,4);
bar(hist4);
title('Histogram 4. 1-32 Red, 32-64 Green, 64-96 Blue');
subplot(3,2,5);
bar(hist5);
title('Histogram 5. 1-32 Red, 32-64 Green, 64-96 Blue');

hists = [hist1 hist2 hist3 hist4 hist5];
histd = zeros(5,5);

for i=1:size(histd,1)
    for j=1:size(histd,2)
        histd(i,j) = histdist(hists(:,i),hists(:,j));
    end
end
histd
end