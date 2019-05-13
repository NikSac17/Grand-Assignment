clc
%non-linear equations
f1=@(x) (x-4).^2 +(y-4).^2 -5 ;
f2=@(x) x.^2 +y.^2 -16;

%graphically looking our 1 st guess is (2,4) and
% 2 nd guess is (4,2)
x=[2 ;4];     %initial guess
for i=1:20
    
    J=[2*(x(1)-4) 2*(x(2)-4);2*x(1) 2*x(2)];    %define jacobi
    f=-[(x(1)-4).^2+(x(2)-4).^2-5 ;x(1).^2+x(2).^2-16];  %function vector
    
    dx=inv(J)*f;
    x=x+dx;
 
end
disp('1st Solution vector is : ')
disp(x)



x=[4 ;2];     %initial guess
for i=1:20
    
    J=[2*(x(1)-4) 2*(x(2)-4);2*x(1) 2*x(2)];    %define jacobi
    f=-[(x(1)-4).^2+(x(2)-4).^2-5 ;x(1).^2+x(2).^2-16];  %function vector
    
    dx=inv(J)*f;
    x=x+dx;
 
end
disp('2nd Solution vector is : ')
disp(x)
%replaced
%x with x(1)
%y with x(2)

%plotting equations
theta=linspace(0,2*pi);

x=4*cos(theta);
y=4*sin(theta);


plot(x,y,'g')
axis('equal')
hold on


x=4 + sqrt(5)*cos(theta);
y=4 + sqrt(5)*sin(theta);
plot(x,y,'r')
axis('equal')

grid on