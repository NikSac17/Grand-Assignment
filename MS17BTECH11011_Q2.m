clc
clear all

%non-linear equations
f1=@(x) -x.^2 + x +0.75-y ;
f2=@(x) -y-5*x*y +x;


x=[1.2 ;1.2];     %initial guess



for i=1:20
    
    J=[-2*x(1)+1 -1;-5*x(2)+1 -1-5*x(1)];    %define jacobi
    f=-[-x(1).^2+x(1)+0.75-x(2) ; -x(2)-5*x(1)*x(2)+x(1)];  %function vector
    
    dx=inv(J)*f;
    x=x+dx;
 
end
disp('Solution vector is : ')
disp(x)

%replaced
%x with x(1)
%y with x(2)