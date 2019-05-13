clc
clear all

xx=[1 2 3 4 5];
X=log10(xx);

yy=[0.5 1.7 3.4 5.7 8.4];
Y=log10(yy);


n=3;   


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




A=[length(X) xsum(1,1) ;xsum(1,1) xsum(1,2) ];

for t=1:(n-1)
    b(t,1)=xysum(1,t);
end


sol=A\b;

syms x
P=sol(1,1) + sol(2,1)*x ;

b=sol(2,1);
fprintf('Value of b is %f.\n',b);

a=10.^sol(1,1);
fprintf('Value of a is %f.\n',a);

plot(xx,yy,'*')
hold on

x=linspace(1,6);
y=a.*x.^b;
plot(x,y,'r')
xlabel('x')
ylabel('y')
legend('Data points','Power Equation')

x=6;
y=a.*x.^b;
fprintf('Value at x=6 is %f.\n\n',y)

