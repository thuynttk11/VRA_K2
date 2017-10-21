function Q6_TH3(number)
imgTrainAll= loadMNISTImages('./train-images.idx3-ubyte');
lblTrainAll= loadMNISTLabels('./train-labels.idx1-ubyte');

Mdl=fitcknn(imgTrainAll',lblTrainAll);

imgTestAll=loadMNISTImages('./t10k-images.idx3-ubyte');
lblTestAll=loadMNISTLabels('./t10k-labels.idx1-ubyte');

imgTest=imgTestAll(:,number);

lblPredictTest=predict(Mdl,imgTest');
lblImageTest=lblTestAll(number);

figure;
img2D=reshape(imgTest,28,28);
imshow(img2D);

lblData='Anh thu: ';
lblData=[lblData,num2str(number),'. Du doan: '];

lblData=[lblData,num2str(lblPredictTest),'. Anh KQ: '];

lblData=[lblData,num2str(lblTestAll(number))];
title(lblData);
if(lblPredictTest==lblImageTest)
    lblData=[lblData,'. Nhan dang dung.'];
else
     lblData=[lblData,'. Nhan dang sai.'];
end
title(lblData);
end

