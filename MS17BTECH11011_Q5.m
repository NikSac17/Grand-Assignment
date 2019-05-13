
clear all
clc

% Using the first 3 points
a=[-0.2 0.3 0.7 ];          % x
b=[1.23 2.34 -1.05];     % f(x)
disp('Using the first 3 points')
%1 st divided difference
for i=1:2
    t=(b(1,i+1)-b(1,i))/(a(1,i+1)-a(1,i));
    T(1,i)=t;
end
disp('1 st divided difference')
disp(T)


%2 nd divided difference
for i=1:1
    u=((T(1,i+1)-T(1,i)))/(a(1,i+2)-a(1,i));
    U(1,i)=u;
end
disp('2 nd divided difference')
disp(U)

syms x
P=b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2));
disp('Required polynimial is : ')
disp(collect(P))

f=@(x) b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2));
f(0.4)
disp('Error')
err=@(x) U(1,1)*(x-a(1,1))*(x-a(1,2));
disp('Error for 0.4 is ')
err(0.4)


% Using the last 3 points
disp('Using the last 3 points')
a=[0.7 0.3 0.1];          % x
b=[-1.05 2.34 -0.06];     % f(x)

%1 st divided difference
for i=1:2
    t=(b(1,i+1)-b(1,i))/(a(1,i+1)-a(1,i));
    T(1,i)=t;
end
disp('1 st divided difference')
disp(T)

%2 nd divided difference
for i=1:1
    u=((T(1,i+1)-T(1,i)))/(a(1,i+2)-a(1,i));
    U(1,i)=u;
end
disp('2 nd divided difference')
disp(U)
syms x
P=b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2));
disp('Required polynimial is : ')
disp(collect(P))

f=@(x) b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2));
f(0.4)
disp('Error')
err=@(x) U(1,1)*(x-a(1,1))*(x-a(1,2));
disp('Error for 0.4 is ')
err(0.4)



% Using the best set of 3 points
a=[0.1 0.3 0.7  ];          % x
b=[-0.06 2.34 -1.05 ];     % f(x)
disp('Using the best set 3 points')
%1 st divided difference
for i=1:2
    t=(b(1,i+1)-b(1,i))/(a(1,i+1)-a(1,i));
    T(1,i)=t;
end
disp('1 st divided difference')
disp(T)


%2 nd divided difference
for i=1:1
    u=((T(1,i+1)-T(1,i)))/(a(1,i+2)-a(1,i));
    U(1,i)=u;
end
disp('2 nd divided difference')
disp(U)

syms x
P=b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2));
disp('Required polynimial is : ')
disp(collect(P))

f=@(x) b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2));
f(0.4)

disp('Error')
err=@(x) U(1,1)*(x-a(1,1))*(x-a(1,2));
disp('Error for 0.4 is ')
err(0.4)



% using all points

disp('Using all points')

a=[-0.2 0.3 0.7 -0.3 0.1]  ;   %x
b=[1.23 2.34 -1.05 6.51 -0.06];     %f(x)



%1 st divided difference
for i=1:4
    t=(b(1,i+1)-b(1,i))/(a(1,i+1)-a(1,i));
    T(1,i)=t;
end
disp('1 st divided difference')
disp(T)

%2 nd divided difference
for i=1:3
    u=((T(1,i+1)-T(1,i)))/(a(1,i+2)-a(1,i));
    U(1,i)=u;
end
disp('2 nd divided difference')
disp(U)

%3 rd divided diffrence

for i=1:2
    v=((U(1,i+1)-U(1,i)))/(a(1,i+3)-a(1,i));
    V(1,i)=v;
end
disp('3 rd divided difference')
disp(V)

%4 th divided diffrence
for i=1:1
    w=((V(1,i+1)-V(1,i)))/(a(1,i+3)-a(1,i));
    W(1,i)=w;
end
disp('4 th divided difference')
disp(W)

syms x
P=b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2)) + V(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3)) + W(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3))*(x-a(1,4)) ;
disp('Required polynimial is : ')
disp(collect(P))


f=@(x) b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2)) + V(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3)) + W(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3))*(x-a(1,4)) ;
f(0.4)


% because all points will give different interpolated polynomials
% that is why value of function is different at x=0.4 for different cases

