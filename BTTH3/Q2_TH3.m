function Q2_TH3(number)
testData='t10k-images.idx3-ubyte';
testDataLabel='t10k-labels.idx1-ubyte';
[allTestImages,allTestLabels]=LoadData(testData,testDataLabel);

figure;
img=allTestImages(:,number);
img2D=reshape(img,28,28);
lblData=num2str(allTestLabels(number));
lblData=[lblData,'(',num2str(number),')'];
imshow(img2D);
title(lblData);
end