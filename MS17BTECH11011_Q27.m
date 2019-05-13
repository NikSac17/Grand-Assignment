clc
clear all
%initial conditions
x=0;   
y1=4;    
y2=6 ; 


h=0.5;  %step size


%euler method
for i=1:4
    
    lamda=-0.5*y1;   %lamda=dy1/dx
    y1 = y1 + lamda*h;
    Y1(1,i)=y1;
    
    z_prime = 4-0.3*y2 -0.1*y1 ;        %z_prime=dy2/dx
    y2 =y2 + z_prime*h;
    Y2(1,i)=y2;
    
    X(1,i)=x;
    x=x+h;
    
end

plot(X,Y1,'r')
hold on
plot(X,Y2,'g')
legend('First Differential Equation','Second Differential Equation')





