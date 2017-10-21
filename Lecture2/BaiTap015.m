function BaiTap015()
%%Load Data Train
strData='train-images.idx3-ubyte';
strDataLabel='train-labels.idx1-ubyte';
[imgDataTrain,lblDataTrain]=LoadData(strData,strDataLabel);
fprintf('\nload du lieu train');
%%Extract Features
featuresDataTrain=ExtractFeaturesHog(imgDataTrain);
%%Build model KNN
Mdl=fitcknn(featuresDataTrain',lblDataTrain);
%%Load Data Test
strData='t10k-images.idx3-ubyte';
strDataLabel='t10k-labels.idx1-ubyte';
[imgDataTest,lblActualDataTest]=LoadData(strData,strDataLabel);
%%Extract Features
featuresDataTest=ExtractFeaturesHog(imgDataTest);
%% Save Result
lblResult=predict(Mdl,featuresDataTest');
nResult=(lblResult==lblActualDataTest);
nCount=sum(nResult);
fprintf('\nSo luong mau dung:%d\n',nCount);
end