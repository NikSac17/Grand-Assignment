clear all;
clc;

X=[10 20 30 40 50 60 70 80];
Y=[25 70 380 550 610 1220 830 1450];

n=4;   


for i=1:n
    sum=0;
    for j=1:length(X)
        sum=sum+X(1,j).^i;
    end
    xsum(1,i)=sum;
end


for i=0:(n-2)
    sum=0;
    for j=1:length(X)
        sum=sum+(X(1,j).^i)*Y(1,j);
    end
    xysum(1,i+1)=sum;
end




A=[length(X) xsum(1,1) xsum(1,2);
    xsum(1,1) xsum(1,2) xsum(1,3);
    xsum(1,2) xsum(1,3) xsum(1,4)];

for t=1:(n-1)
    b(t,1)=xysum(1,t);
end


sol=A\b;

syms x
P=sol(1,1) + sol(2,1)*x +sol(3,1)*x^2; %required polynomial

fprintf('Coefficient of x.^2 is %f.\n',sol(3,1))
fprintf('Coefficient of x.^1 is %f.\n',sol(2,1))
fprintf('Coefficient of x.^0 is %f.\n',sol(1,1))
