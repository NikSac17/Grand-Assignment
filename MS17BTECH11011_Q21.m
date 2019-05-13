clear all
clc

f=@(x) sin(x);
x=pi/4;
h=pi/12;
%% ANALYTICAL
f_prime= @(x) cos(x);
z=f_prime(pi/4);
disp('Analytical Solution')
disp(z)


%% FORWARD
%O(h)

deri=(f(x+h)-f(x))/h;
disp('Forward difference approximations of O(h)')
disp(deri)

disp('Relative error')
aplha=(abs(z-deri)/z)*100;
disp(aplha)

%O(h.^2)

deri=(-1*f(x+2*h) + 4*f(x+h)- 3*f(x))/(2*h);
disp('Forward difference approximations of O(h.^2)')
disp(deri)

disp('Relative error')
aplha=(abs(z-deri)/z)*100;
disp(aplha)

%% BACKWARD
%O(h)

deri=(f(x)-f(x-h))/h;
disp('Backward difference approximations of O(h)')
disp(deri)
disp('Relative error')
aplha=(abs(z-deri)/z)*100;
disp(aplha)

%O(h.^2)

deri=(3*f(x) - 4*f(x-h)+ f(x-2*h))/(2*h);
disp('Backward difference approximations of O(h.^2)')
disp(deri)
disp('Relative error')
aplha=(abs(z-deri)/z)*100;
disp(aplha)

%% CENTRAL
%O(h.^2)

deri=(f(x+h)-f(x-h))/(2*h);
disp('Central difference approximations of O(h.^2)')
disp(deri)
disp('Relative error')
aplha=(abs(z-deri)/z)*100;
disp(aplha)

%O(h.^4)

deri=(-1*f(x+2*h) + 8*f(x+h)- 8*f(x-h)+f(x-2*h))/(12*h);
disp('Central difference approximations of O(h.^4)')
disp(deri)
disp('Relative error')
aplha=(abs(z-deri)/z)*100;
disp(aplha)