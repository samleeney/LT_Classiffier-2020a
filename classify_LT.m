function I = classify_LT(im)
load('trainedModel2020a-v2-10epoch.mat'); %location of trained neural network
imds_val = imageDatastore(im); %needed if loading multiple images
imds_val.ReadFcn = @readFcnMatFile_input;
pred = predict(trainedNet,imds_val); %runs the prediction
for n = 1:size(pred,4)
    image = pred(:,:,:,n);
    I = imbinarize(image); %outputs binary image, 1 = LT 0 = not LT
end
end
