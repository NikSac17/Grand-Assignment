clear all
clc

%nothing is mentioned special in question thats why i took log base 10
N=[1 10 100 1000 10000 100000 1000000];
X=log10(N);

stress=[1100 1000 925 800 625 550 420];
Y=log10(stress);


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
disp('Required polynomial is : ')
syms x
P=sol(1,1) + sol(2,1)*x ;
collect(P)

x=linspace(0,7);
y=sol(1,1) + sol(2,1)*x ;
plot(x,y,'r')
hold on
plot(X,Y,'k*')
legend('Fitted Curve','Discrete points')
xlabel('N, cycles')
ylabel('Stress, MPa')
