function demoHog()
imgTrainAll=loadMNISTImages('train-images.idx3-ubyte');
lblTrainAll=loadMNISTLabels('train-labels.idx1-ubyte');
imgI1D=imgTrainAll(:,1968);
imgI2D=reshape(imgI1D,28,28);
subplot(1,5,1);
imshow(imgI2D);
[featuresVector,visualHog]=extractHOGFeatures(imgI2D,'CellSize',[8,8]);
subplot(1,5,2);
plot(visualHog);
[featuresVector,visualHog]=extractHOGFeatures(imgI2D,'CellSize',[4,4]);
subplot(1,5,3);
plot(visualHog);
[featuresVector,visualHog]=extractHOGFeatures(imgI2D,'CellSize',[2,2]);
subplot(1,5,4);
plot(visualHog);
end
