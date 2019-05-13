%a,b are data points
clear all
clc

% 3 rd order
a=[1 2 3 5 ];
b=[3 6 19 99 ];

%lagrange interpolation
syms x;

sum=0;
for i=1:length(a)
    P=1;
    for j=1:length(b)
        if j~=i
            P=P*((x-a(1,j))/(a(1,i)-a(1,j)));
        end
    end
    
sum=sum+b(1,i)*P ;
end

disp('3 rd order polynomial')
alp1=collect(sum)
f=@(x) subs(alp1);

zz=f(4);
fprintf('Value at x=4 is %f.\n',zz)

% 2 nd order
a=[1 2 3  ];
b=[3 6 19  ];

%lagrange interpolation
syms x;

sum=0;
for i=1:length(a)
    P=1;
    for j=1:length(b)
        if j~=i
            P=P*((x-a(1,j))/(a(1,i)-a(1,j)));
        end
    end
    
sum=sum+b(1,i)*P ;
end

disp('2 nd order polynomial')
alp2=collect(sum)

f=@(x) subs(alp2);

zz=f(4);
fprintf('Value at x=4 is %f.\n',zz)

% 1 st order
a=[  3 5 ];
b=[  19 99 ];

%lagrange interpolation
syms x;

sum=0;
for i=1:length(a)
    P=1;
    for j=1:length(b)
        if j~=i
            P=P*((x-a(1,j))/(a(1,i)-a(1,j)));
        end
    end
    
sum=sum+b(1,i)*P ;
end

disp('1 st order polynomial')
alp3=collect(sum)

f=@(x) subs(alp3);

zz=f(4);
fprintf('Value at x=4 is %f.\n',zz)

%plots 

a=[1 2 3 5 7 8];
b=[3 6 19 99 291 444];
plot(a,b,'k*')
hold on
x=linspace(1,8);
y=subs(alp1);
plot(x,y)

y=subs(alp2);
plot(x,y,'r')

y=subs(alp3);
plot(x,y,'g')
legend('Data Points','3 rd order Lagrange polynomial','2 nd order Lagrange polynomial','1 st order Lagrange polynomial')








