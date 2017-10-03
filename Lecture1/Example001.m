function Example001()
a = rand();
fprintf('\n a = %8.3f',a);

r = randi([1 10]);
fprintf('\n Random tu 1 den 10: %d',r);
matran = randi([-10,10],1,10);
fprintf('\n Size ma tran: %d',size(matran,2));
fprintf('\n Ma tran duoc tao: ');
fprintf('[%2d]',matran);
end

