function BaiTap013()
%%load Data Train
strData='train-images.idx3-ubyte';
strDataLabel='train-labels.idx1-ubyte';
[imgDataTrain,lblDataTrain]=LoadData(strData,strDataLabel);
%%extract features
featuresDataTrain=ExtractFeaturesLBP(imgDataTrain);
%%Build model KNN
Mdl=fitcknn(featuresDataTrain',lblDataTrain);
%%load Data Test
strData='t10k-images.idx3-ubyte';
strDataLabel='t10k-labels.idx1-ubyte';
[imgDataTest,lblActualDataTest]=LoadData(strData,strDataLabel);
%Extract Features
featuresDataTest=ExtractFeaturesLBP(imgDataTest);
%%save resultR
lblResult=predict(Mdl,featuresDataTest');
nResult=(lblResult==lblActualDataTest);
nCount=sum(nResult);
fprintf('\n So luong mau dung: %d\n',nCount);
end
