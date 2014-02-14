function workingWithMatlab()
    I = double(imread('Fig0114(c)(bottles).tif'));

    imshow(I,[]);

    I2 = imcrop;
    
    figure;
    subplot(1,2,1), imshow(I, []);
    colormap;
    colorbar;
    title( 'original image' );
    hold on;
    subplot(1,2,2), imshow(I2,[]);
    colormap;
    colorbar;
    title( 'cropped image' );
    [x,y] = ginput;
    hold;
    subplot(1,2,2), plot(x, y, 'w+');
    text(x/2,y, 'Diet pepsi');
    
end