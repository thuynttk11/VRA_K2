function Recognition005_Digits()
fprintf('\n Load du lieu train');
imgTrainAll= loadMNISTImages('./train-images.idx3-ubyte');
lblTrainAll= loadMNISTLabels('./train-labels.idx1-ubyte');

Mdl=fitcknn(imgTrainAll',lblTrainAll);

fprintf('\n Load du lieu Test');
imgTestAll=loadMNISTImages('./t10k-images.idx3-ubyte');
lblTestAll=loadMNISTLabels('./t10k-labels.idx1-ubyte');

nTestImgs=size(imgTestAll,2);
nNumber=randi([1 nTestImgs]);
imgTest=imgTestAll(:,nNumber);

lblPredictTest=predict(Mdl,imgTest');
lblImageTest=lblTestAll(nNumber);
figure;
img2D=reshape(imgTest,28,28);
imshow(img2D);
strLabelImage='Ban dau';
strLabelImage=[strLabelImage,num2str(lblTestAll(nNumber)),'.']; %lblTestLabelAll
strLabelImage=[strLabelImage,'Du doan:'];
strLabelImage=[strLabelImage,num2str(lblPredictTest),'.'];
if(lblPredictTest==lblImageTest)
    strLabelImage=[strLabelImage,'Ket qua dung.'];
else
    strLabelImage=[strLabelImage,'Ket qua sai.'];
end
    title(strLabelImage);
end

