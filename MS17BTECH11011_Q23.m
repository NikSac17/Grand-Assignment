clear all
clc

a=[1.5 1.9 2.1 ];       %x
b=[1.0628 1.3961 1.5432 ];       %f(x)


%main-code

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
P= b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2));
disp('Required polynimial is : ')
disp(collect(P))


f=@(x) b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2));
x=1.75;h=pi/12;
deri=(-1*f(x+2*h) + 8*f(x+h)- 8*f(x-h)+f(x-2*h))/(12*h);
disp('First derivative of interpolated polynomial at x=1.75 is : ')
disp(deri)


f=@(x) b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2));
x=1.75;h=pi/12;
deri=(f(x-h)-2*f(x)+f(x+h))/(h.^2);
disp('Second derivative of interpolated polynomial at x=1.75 is : ')
disp(deri)