image_filepath = 'example_image.png'; %enter image location(s) here
I = classify_LT(image_filepath);
figure(1)
subplot(1,3,1)
imshow(I) %show classification
subplot(1,3,2)
im_orig = im2double(imresize(imread(image_filepath),[256,256]));
imshow(im_orig) %show original image
I_final = I.*im_orig; %original image with masked region extracted
subplot(1,3,3)
imshow(I_final)
