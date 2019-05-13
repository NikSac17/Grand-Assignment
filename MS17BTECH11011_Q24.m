clc
clear all
%taylor series of order 4
%after substituting all values in that expression we get
%y(h)=1 + (-2)*h.^2 


x=0;
h=0.2;
for i=1:5
    x=x+h;
    y=1 + (-2)*x.^2 + x.^4 ;
    
    X(1,i)=y;
end
disp('For h=0.2')
disp(X)

%analytical
x=linspace(0,1,5);
y=1./(1+x.^2);
disp('Analytical')
disp(y)