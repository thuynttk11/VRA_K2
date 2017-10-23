function Q7A_TH3()
imgTrainAll= loadMNISTImages('./train-images.idx3-ubyte');
lblTrainAll= loadMNISTLabels('./train-labels.idx1-ubyte');

Mdl=fitcknn(imgTrainAll',lblTrainAll);

imgTestAll=loadMNISTImages('./t10k-images.idx3-ubyte');
lblTestAll=loadMNISTLabels('./t10k-labels.idx1-ubyte');

bangKQ=zeros([11 11]);
for i=0:9
    bangKQ((i+2),1)=i;
    bangKQ(1,(i+2))=i;
end
nLabelTest=size(lblTestAll,1);
count=0;
for i=1:nLabelTest 
    row=lblTestAll(i)+2;
    imgTest=imgTestAll(:,i);
    predictLabel_i=predict(Mdl,imgTest');
    column=predictLabel_i+2;
    bangKQ(row,column)=bangKQ(row,column)+1;
end
bangKQ
               filename="Q7A_TH3.csv";
               csvwrite(filename,bangKQ);
end