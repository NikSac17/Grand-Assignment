clear all
clc

%initial conditions
x=0;
y=1;

h=.5;

for i=1:2
    z=  -2*x*y.^2;           %differential equation  z=dy/dx
    y=y + z*h;
    Y(1,i)=y;
    X(1,i)=x;
    x=x+h;
end
plot(X,Y,'r')
hold on

%initial conditions
x=0;
y=1;

h=1/4;

for i=1:4
    z=  -2*x*y.^2;           %differential equation  z=dy/dx
    y=y + z*h;
    Y(1,i)=y;
    X(1,i)=x;
    x=x+h;
end
plot(X,Y,'b')

%initial conditions
x=0;
y=1;

h=1/8;

for i=1:8
    z=  -2*x*y.^2;           %differential equation  z=dy/dx
    y=y + z*h;
    Y(1,i)=y;
    X(1,i)=x;
    x=x+h;
end
plot(X,Y,'g')

x=linspace(0,1);
y=1./(1+x.^2);
plot(x,y,'k')
axis('equal')

legend('h=1/2','h=1/4','h=1/8','Analytical')

