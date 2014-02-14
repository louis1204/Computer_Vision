function res = histdist(hist1, hist2)
csum = 0;
for k=1:size(hist1,1)
    temp = (hist1(k,1) - hist2(k,1))^2;
    temp = temp / (hist1(k,1) + hist2(k,1));
    csum = csum + temp;
end
res = csum/2;
end