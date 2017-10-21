function Q4_TH3()

	    allTestLabels = loadMNISTLabels('./t10k-labels.idx1-ubyte');
	    
	    nTestLabels = size(allTestLabels);
	    
	    nResult = zeros([10 1]);
	    
	    for i = 1 : nTestLabels
	        k = allTestLabels(i);
	        nResult(k+1) = nResult(k+1) + 1;
	    end
	    
	    fprintf('Thong ke tap test:\n');
        bangKQ=zeros([10 2]);
        	    for i = 1:10
                   bangKQ(i,1)=i-1;    
                   bangKQ(i,2)=nResult(i);
               
                end
               bangKQ
            filename="Q4_TH3.csv";
            csvwrite(filename,bangKQ);
end








