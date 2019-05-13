
clear all;
clc;

X=[10 15 20 25 40 50 55 60 75];  %X=Time (min)
Y=[5 20 18 40 33 54 70 60 78];   %Y=Tensile strength

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


A=[length(X) xsum(1,1) ;xsum(1,1) xsum(1,2)];

for t=1:(n-1)
    b(t,1)=xysum(1,t);
end


sol=A\b;
disp('Required polynomial is : ')
syms x
P=sol(1,1) + sol(2,1)*x  ;
simplify(P)

%graph
x=linspace(10,75);
y=subs(P);
plot(x,y,'k')
hold on
X=[10 15 20 25 40 50 55 60 75];
Y=[5 20 18 40 33 54 70 60 78];
plot(X,Y,'^')

xlabel('Time (min)')
ylabel('Tensile strength')


X=32;  %time 32 minute
P=sol(1,1) + sol(2,1)*X;
disp('Corresponding tensile strength at a time of 32 min')
disp(P)

fprintf('Intercept is %f.\n\n',sol(1,1))
fprintf('Slope is %f.\n\n',sol(2,1))


%standard error of estimate
x=[10 15 20 25 40 50 55 60 75];
y=@(x) sol(1,1) + sol(2,1)*x;

for i=1:length(x)
    Y_pre(1,i)=y(x(1,i));
end

sum=0;
for i=1:length(Y)
    sum = sum + (Y(1,i)-Y_pre(1,i)).^2;
end
sum=sqrt(sum/length(Y));
fprintf('Standard error of the estimate is %f.\n\n',sum);

%the correlation coefficient

X=[10 15 20 25 40 50 55 60 75];  %X=Time (min)
Y=[5 20 18 40 33 54 70 60 78];   %Y=Tensile strength

ss_xx=length(X)*var(X);
ss_yy=length(Y)*var(Y);
ss_xy=length(X)*cov(X,Y);

corr_coeff=sqrt((ss_xy).^2/(ss_xx*ss_yy))

%as per given in 
% http://mathworld.wolfram.com/CorrelationCoefficient.html


