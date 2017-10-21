function [imgData,lblData]=LoadData(strFileNameData,strFileNameLabel)
imgData=loadMNISTImages(strFileNameData);
lblData=loadMNISTLabels(strFileNameLabel);
end
