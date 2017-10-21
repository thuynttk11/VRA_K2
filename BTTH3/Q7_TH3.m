function Q7_TH3(number)
imgTrainAll= loadMNISTImages('./train-images.idx3-ubyte');
lblTrainAll= loadMNISTLabels('./train-labels.idx1-ubyte');

Mdl=fitcknn(imgTrainAll',lblTrainAll);

imgTestAll=loadMNISTImages('./t10k-images.idx3-ubyte');
lblTestAll=loadMNISTLabels('./t10k-labels.idx1-ubyte');

nLabelTest=size(lblTestAll,1);
count=0;
    for i=1:nLabelTest
        if(lblTestAll(i) == number)
            imgTest = imgTestAll(:, i);
            lblPredictTest=predict(Mdl,imgTest');
            if(lblPredictTest ~= lblTestAll(i))
                count = count + 1;
            end
        end
    end
           
    fprintf('So luong anh co nhan thu %d bi nhan dang sai la %d: ',number,count);

end

