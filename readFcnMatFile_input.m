 function I = readFcnMatFile_input(filename)
% Load data and get matrices from the structure
image = imread(filename);
image = single(image)./255;
climage = cat(3,image,image,image);
I = imresize(climage, [256 256]);
 end
