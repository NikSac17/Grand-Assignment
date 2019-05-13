
clc
clear all
%taylor series of order 4
%after substituting all values in that expression we get
%y(h)=-1/2 -h/2 + (3/8)*h.^2 + (1/48)*h.^3


x=0;
h=1/2;
for i=1:2
    x=x+h;
    y=1 -x/2 + (3/8)*x.^2 + (3/48)*x.^3;
    Y(1,i)=y;
    X(1,i)=x;
end
disp('For h=1/2')
disp(Y)
plot(X,Y,'r')

hold on
x=0;
h=1/4;
for i=1:4
    x=x+h;
    y=1 -x/2 + (3/8)*x.^2 + (3/48)*x.^3;
    YY(1,i)=y;
      XX(1,i)=x;
end
disp('For h=1/4')
disp(YY)
plot(XX,YY,'b')

x=0;
h=1/8;
for i=1:8
    x=x+h;
    y=1 -x/2 + (3/8)*x.^2 + (3/48)*x.^3;
    YYY(1,i)=y;
    XXX(1,i)=x;
end
disp('For h=1/8')
disp(YYY)
plot(XXX,YYY,'g')


x=linspace(0,1,8);
y=x -2 +3*exp(-x/2);   % analytical
plot(x,y,'k')
legend('h=1/2','h=1/4','h=1/8','Analytical')



