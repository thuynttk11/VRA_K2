function Q3_TH3()
        
	    allTrainLabels = loadMNISTLabels('./train-labels.idx1-ubyte');
	    nTrainLabels = size(allTrainLabels);
	    
        
	    nResult = zeros([10 1]);
	    
	    for i = 1 : nTrainLabels
	        k = allTrainLabels(i);
	        nResult(k+1) = nResult(k+1) + 1;
	    end
	    
	    fprintf('Thong ke tap train:\n');
        bangKQ=zeros([10 2]);
        	    for i = 1:10
                   bangKQ(i,1)=i-1;    
                   bangKQ(i,2)=nResult(i);  
                end
               bangKQ
               filename="Q3_TH3.csv";
               csvwrite(filename,bangKQ);
end








