clear all
clc

%y=x.^3 + 4*x  -15   at x=0 ; h=0.25;


f=@(x) x.^3 + 4*x  -15;
x=0;
h=0.25;

deri1 = (-1*f(x+2*h) + 8*f(x+h) - 8*f(x-h) + f(x-2*h))/(12*h);

disp('Derivative of a part is ')
disp(deri1)
%analytical
%ans= 3*x.^2 + 4
f=@(x)  23*x.^2 + 4;
fprintf('Analytical solution of part a is %f.\n\n',f(0))

%y=x.^2*cos(x)   at x=0.4 ; h=0.1;


f=@(x) x.^2*cos(x);
x=0.4;
h=0.1;

deri2 = (-1*f(x+2*h) + 8*f(x+h) - 8*f(x-h) + f(x-2*h))/(12*h);

disp('Derivative of b part is ')
disp(deri2)
%analytical
%ans= 2*x*cos(x) - x.^2*sin(x)
f=@(x)  2*x*cos(x) - x.^2*sin(x);
fprintf('Analytical solution of part b is %f.\n\n',f(0.4))

%y=sin(0.5*sqrt(x))./x  at x=1 ; h=0.2;


f=@(x) sin(0.5*sqrt(x))./x;
x=1;
h=0.2;

deri3 = (-1*f(x+2*h) + 8*f(x+h) - 8*f(x-h) + f(x-2*h))/(12*h);

disp('Derivative of c part is ')
disp(deri3)
%analytical
%ans= -sin(0.5*sqrt(x))./x.^2 + cos(0.5*sqrt(x))/(4*x*sqrt(x))
f=@(x)  -sin(0.5*sqrt(x))./x.^2 + cos(0.5*sqrt(x))/(4*x*sqrt(x));
fprintf('Analytical solution of part c is %f.\n\n',f(1))
