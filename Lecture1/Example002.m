function Example001()
strMessage = '\n Nhap m: ';
m = input(strMessage);
strMessage = '\n Nhap n: ';
n= input(strMessage);
a = ones(m,n); fprintf('[%d]',a);
b = zeros(m,n); fprintf('[%d]',b);
c=eye(m,n);
d=randi([-10,10],m,n);
a(1,1) =5
e = size(a);
end

