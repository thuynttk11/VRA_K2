function Q5_TH3(number)
imgTrainAll= loadMNISTImages('./train-images.idx3-ubyte');
lblTrainAll= loadMNISTLabels('./train-labels.idx1-ubyte');

Mdl=fitcknn(imgTrainAll',lblTrainAll);

imgTestAll=loadMNISTImages('./t10k-images.idx3-ubyte');
lblTestAll=loadMNISTLabels('./t10k-labels.idx1-ubyte');


imgTest=imgTestAll(:,number);

imgPredictTest=predict(Mdl,imgTest');
lblImageTest=lblTestAll(number);

figure;
img2D=reshape(imgTest,28,28);
imshow(img2D);

lblData='Anh thu: ';
lblData=[lblData,num2str(number),'. Ket qua la: '];
title(lblData);
end

