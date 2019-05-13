clear all
clc

%% Analytical Solution

ana_sol=1.6405;

%% 2-POINT Gauss-Legendre

%f=@(x) 0.2 + 25*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;

% we have to intgrate f from 0 to 0.8
%first we have to change limits of integration to -1 to 1
%so we substitute x= a + bt;
%we get 2 linear equations 
%a-b=0  &   a+b=0.8
%solving we get a=b=0.4;
%so substitute x=0.4 + 0.4t;
%so after substitution dx=0.4dt
%function f changes as 


f=@(t) (0.2 + 25*(0.4 + 0.4*t) - 200*(0.4 + 0.4*t).^2 + 675*(0.4 + 0.4*t).^3 - 900*(0.4 + 0.4*t).^4 + 400*(0.4 + 0.4*t).^5)*0.4;


%% 2-point gauss legendre formulae
I=1*f(1/sqrt(3)) + 1*f(-1/sqrt(3));
disp('2-point Gauss-Legendre')
disp(I)
disp('Relative error')
aplha=(abs(ana_sol-I)/ana_sol)*100;
disp(aplha)

%% 3-point gauss legendre formulae
I=0.5555556*f(-0.774596669) + 0.8888889*f(0) + 0.5555556*f(0.774596669);
disp('3-point Gauss-Legendre')
disp(I)
disp('Relative error')
aplha=(abs(ana_sol-I)/ana_sol)*100;
disp(aplha)


