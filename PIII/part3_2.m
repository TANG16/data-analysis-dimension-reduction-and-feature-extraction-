
load 'DataB.mat';

% select all the images with digit 3
location3 = find(gnd==3);
min3 = min(location3);
max3 = max(location3);
image3 = [fea(min3:max3,:)];

% apply ISOMAP method on all digit 3 images
% using ISOMAP function from drtoolbox
[ISOMAP3, mapping] = isomap(image3, 4, 5);

% plot image corresponding to the first and second components of ISOMAP
fea = image3;
nsample = size(fea,1);
width = 28;
height = 28;
xy_coord = ISOMAP3(:,1:2);
digitsImages = reshape(fea', height, width, size(fea,1));
scale = 0.05;
skip = 1;
plotImages(digitsImages, xy_coord,scale,skip);
title('Digit 3 image after applying ISOMAP');
xlabel('1st component'),ylabel('2nd component');