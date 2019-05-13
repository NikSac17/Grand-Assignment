clc
clear all

%f=@(x) (exp(x)*sin(x))/(1+x.^2);      given function
% we have to intgrate f from 0 to 2
%first we have to change limits of integration to -1 to 1
%so we substitute x= a + bt;
%we get 2 linear equations 
%a-b=0  &   a+b=2
%solving we get a=b=1;
%so substitute x=1 + t;
%so after substitution dx=dt
%function f changes as 

f=@(t) (exp(1+t)*sin(1+t))/(1+(1+t).^2);


%% 2-point Gauss-Legendre formula

I=1*f(1/sqrt(3)) + 1*f(-1/sqrt(3));
disp('2-point Gauss-Legendre')
disp(I)

%% 3-point Gauss-Legendre formula

I=0.5555556*f(-0.774596669) + 0.8888889*f(0) + 0.5555556*f(0.774596669);
disp('3-point Gauss-Legendre')
disp(I)

%% 4-point Gauss-Legendre formula

I=0.3478548*f(-0.861136312) + 0.6521452*f(-0.339981044) + 0.6521452*f(0.339981044) + 0.3478548*f(0.861136312)  ;
disp('4-point Gauss-Legendre')
disp(I)

%% 5-point Gauss-Legendre formula

I=0.2369269*f(-0.906179846) + 0.4786287*f(-0.538469310) + 0.5688889*f(0) + 0.4786287*f(0.538469310) + 0.2369269*f(0.906179846) ;
disp('5-point Gauss-Legendre')
disp(I)

%% 6-point Gauss-Legendre formula

I=0.1713245*f(-0.932469514) + 0.3607616*f(-0.661209386) + 0.4679139*f(-0.238619186) + 0.4679139*f(0.238619186) + 0.3607616*f(0.661209386) + 0.1713245*f(0.932469514);
disp('6-point Gauss-Legendre')
disp(I)
