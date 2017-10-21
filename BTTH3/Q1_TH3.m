function Q1_TH3(number)
strData='train-images.idx3-ubyte';
strDataLabel='train-labels.idx1-ubyte';
[allTrainImages,allTrainLabels]=LoadData(strData,strDataLabel);

figure;
img=allTrainImages(:,number);
img2D=reshape(img,28,28);
lblData=num2str(allTrainLabels(number));
lblData=[lblData,'(',num2str(number),')'];
imshow(img2D);
title(lblData);
end