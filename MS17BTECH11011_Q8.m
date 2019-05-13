clc
clear all
format short

a=[0 1 2.5 3 4.5 5 6];                            %x
b=[2 5.4375 7.3516 7.5625 8.4453 9.1875 12];      %y


%main-code

%1 st divided difference
for i=1:4
    t=(b(1,i+1)-b(1,i))/(a(1,i+1)-a(1,i));
    T(1,i)=t;
end
disp(T)

%2 nd divided difference
for i=1:3
    u=((T(1,i+1)-T(1,i)))/(a(1,i+2)-a(1,i));
    U(1,i)=u;
end
disp(U)

%3 rd divided diffrence

for i=1:2
    v=((U(1,i+1)-U(1,i)))/(a(1,i+3)-a(1,i));
    V(1,i)=v;
end
disp(V)

%4 th divided diffrence

for i=1:1
    w=((V(1,i+1)-V(1,i)))/(a(1,i+3)-a(1,i));
    W(1,i)=w;
end
disp(W)

syms x
P= b(1,1) + T(1,1)*(x-a(1,1)) +U(1,1)*(x-a(1,1))*(x-a(1,2)) + V(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3)) + + W(1,1)*(x-a(1,1))*(x-a(1,2))*(x-a(1,3)*(x-a(1,4)));
disp('Required polynimial is : ')
disp(collect(P))

f=@(x) subs(P);
f(3.5)