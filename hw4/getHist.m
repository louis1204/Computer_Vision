function res = getHist(imgname)
%get rect from image
img = imread(imgname);
imshow(img);
rect = getrect;
xmin = floor(rect(1));
width = floor(rect(3));
ymin = floor(rect(2));
height = floor(rect(4));
%compute histogram
[rcount, rhist] = imhist(img(ymin:ymin+height,xmin:xmin+width,1), 32);
[gcount, ghist] = imhist(img(ymin:ymin+height,xmin:xmin+width,2), 32);
[bcount, bhist] = imhist(img(ymin:ymin+height,xmin:xmin+width,3), 32);
hist = [rcount; gcount; bcount];
totsum = 0;

for i=1:size(hist,1)
    for j=1:size(hist,2)
        totsum = totsum + hist(i,j);
    end
end

hist = hist ./ totsum;
res = hist;
end