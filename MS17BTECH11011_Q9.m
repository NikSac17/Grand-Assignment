clc

t=linspace(0,2*pi,8);
y=(sin(t)).^2;
plot(t,y,'h')
hold on

%seventh order interpolating polynomial


syms x;

sum=0;
for i=1:length(t)
    P=1;
    for j=1:length(y)
        if j~=i
            P=P*((x-t(1,j))/(t(1,i)-t(1,j)));
        end
    end
sum=sum+y(1,i)*P ;
end

P=expand(sum);


x=linspace(0,2*pi);
yy=subs(P);
plot(x,yy,'r')
hold on

%cubic spline

tn=[0:0.01:2*pi];
yn=interp1(t,y,tn,'spline');

plot(tn,yn,'k')
legend('Data points','7 th order','Spline')

