clc
clear all

x=linspace(0,1);
y= sqrt(1-x);
plot(x,y,'b')
hold on

%taylor expansion of sqrt(1-x)


x=linspace(0,1);
y1=-(5*x.^4)/128 - x.^3/16 - x.^2/8 - x/2 + 1;
plot(x,y1,'r')

legend('Given function','Polynomial approximation')

tol=0.01;  %given in question

count=0;
for i=1:(length(x))
    if abs(y(1,i)-y1(1,i))<tol
        %Within Tolerance
        count=count+1;
    else
        %Outside Tolerance
    end
end
 disp(count)
  
%5 terms of taylor expression are required to obtain results accurate to
%two decimal places for h taking values from h=0 to h=0.7