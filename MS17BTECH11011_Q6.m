%data points
clear all
clc

a=[1 2 3 5 7 8];
b=[3 6 19 99 291 444];

%% order 4
%main-code

%1 st divided difference
for i=1:4
    t=(b(1,i+1)-b(1,i))/(a(1,i+1)-a(1,i));
    T(1,i)=t;
end


%2 nd divided difference
for i=1:3
    u=((T(1,i+1)-T(1,i)))/(a(1,i+2)-a(1,i));
    U(1,i)=u;
end


%3 rd divided diffrence

for i=1:2
    v=((U(1,i+1)-U(1,i)))/(a(1,i+3)-a(1,i));
    V(1,i)=v;
end

%4 th divided diffrence
for i=1:1
    w=((V(1,i+1)-V(1,i)))/(a(1,i+3)-a(1,i));
    W(1,i)=w;
end


syms x
P1= b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2)) + V(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3)) + W(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3))*(x-a(1,4)) ;
disp('Required polynimial of 4 th order is : ')
disp(collect(P1))


y=@(x)  b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2)) + V(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3)) + W(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3))*(x-a(1,4)) ;
y(4)

%% order 3

%1 st divided difference
for i=1:3
    t=(b(1,i+1)-b(1,i))/(a(1,i+1)-a(1,i));
    T(1,i)=t;
end


%2 nd divided difference
for i=1:2
    u=((T(1,i+1)-T(1,i)))/(a(1,i+2)-a(1,i));
    U(1,i)=u;
end


%3 rd divided diffrence

for i=1:1
    v=((U(1,i+1)-U(1,i)))/(a(1,i+3)-a(1,i));
    V(1,i)=v;
end



syms x
P2= b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2)) + V(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3)) ;
disp('Required polynimial of 3 rd order is : ')
disp(collect(P2))


y=@(x) b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2)) + V(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3));
y(4)
%% order 2
%1 st divided difference
for i=1:2
    t=(b(1,i+1)-b(1,i))/(a(1,i+1)-a(1,i));
    T(1,i)=t;
end


%2 nd divided difference
for i=1:1
    u=((T(1,i+1)-T(1,i)))/(a(1,i+2)-a(1,i));
    U(1,i)=u;
end


syms x
P3= b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2)) ;
disp('Required polynimial of 2 nd order is : ')
disp(collect(P3))


y= @(x) b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2)) ;
y(4)
%% order 1

%1 st divided difference
for i=1:2
    t=(b(1,i+1)-b(1,i))/(a(1,i+1)-a(1,i));
    T(1,i)=t;
end


syms x
P4= b(1,1) + T(1,1)*(x-a(1,1))  ;
disp('Required polynimial of 1 st order is : ')
disp(collect(P4))


y=@(x) b(1,1) + T(1,1)*(x-a(1,1))  ;
y(4)


%% plots

a=[1 2 3 5 7 8];
b=[3 6 19 99 291 444];
plot(a,b,'k*')
hold on
x=linspace(1,8);
y=subs(P1);
plot(x,y)

y=subs(P3);
plot(x,y,'r')

y=subs(P4);
plot(x,y,'g')
legend('Data Points','3 rd order Lagrange polynomial','2 nd order Lagrange polynomial','1 st order Lagrange polynomial')

%also 4 th order polynomial can't be formed because coefficient of x.^4 is
%vanishing i.e. coefficient of x.^4 is ZERO.
%clearly from the graph cubic polynomial is interpolating much better than
%quadratic and linear
