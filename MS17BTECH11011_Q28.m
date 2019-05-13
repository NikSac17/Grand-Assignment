clc
clear all

xi=0;
xf=pi;
h=(xf-xi)/10;

A=[-6.9490    6.9490   0   0   0   0   0   0   0;
    10.1321 -6.9490 6.9490 0 0 0 0 0 0; 
    0 10.1321 -6.9490 6.9490 0 0 0 0 0;
    0 0 10.1321 -6.9490 6.9490 0 0 0 0;  
    0 0 0 10.1321 -6.9490 6.9490 0 0 0;
    0 0 0 0 10.1321 -6.9490 6.9490 0 0;
    0 0 0 0 0 10.1321 -6.9490 6.9490 0;
    0 0 0 0 0 0 10.1321 -6.9490 6.9490
    0 0 0 0 0 0 0 10.1321 -6.9490];   %9*9 matrix
    
b=[cos(h);
    cos(2*h);
    cos(3*h);
    cos(4*h);
    cos(5*h);
    cos(6*h);
    cos(7*h);
    cos(8*h);
    cos(9*h)-6.9490];  % 9*1 matix

Y=A\b;  % solution vector


for i=1:9
    X(1,i)=i*h;
end

plot(X,Y,'*')
hold on
xn=linspace(0,pi);
yn=interp1(X,Y,xn,'spline');
plot(xn,yn,'r')
xlabel('x')
ylabel('y')
legend('Dicrete points','Interpolated via cubic spline ')
