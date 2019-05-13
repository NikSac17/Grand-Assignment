clc
%I= lim(0 -> pi/2 )(8+4cos(x))dx

% Analytically
% I=4*(pi+1)=16.5663
ana_sol=16.5663;
disp('Analytical solution')
disp('   16.5663')

% Trapezoidal rule
f=@(x) 8 + 4*cos(x);

a=0 ;            %Enter lower limit of integral 
b=pi/2;          %Enter upper limit of integral 
n=30;
h=(b-a)/n;


A=f(a);
B=f(b);

sum=A+B;
for i=1:n-1
    sum=sum+2*f(a+i*h);
end

int=(sum)*(h/2);
disp('Value of required integral is with trapezoidal rule : ')
disp(int)

disp('Relative percentage error')
aplha=(abs(ana_sol-int)/ana_sol)*100;
disp(aplha)

%Composite trapezoidal rule with 2 and 4 segments

% 2 segments
f=@(x) 8 + 4*cos(x);

a=0 ;            %Enter lower limit of integral 
b=pi/2;          %Enter upper limit of integral 
n=2;             %2 segments
h=(b-a)/n;


A=f(a);
B=f(b);

sum=A+B;
for i=1:n-1
    sum=sum+2*f(a+i*h);
end

int=(sum)*(h/2);
disp('Value of required integral with trapezoidal rule with 2 segments is  : ')
disp(int)

disp('Relative percentage error')
aplha=(abs(ana_sol-int)/ana_sol)*100;
disp(aplha)

% 4 segments 

f=@(x) 8 + 4*cos(x);

a=0 ;            %Enter lower limit of integral 
b=pi/2;          %Enter upper limit of integral 
n=4;             %4 segments
h=(b-a)/n;


A=f(a);
B=f(b);

sum=A+B;
for i=1:n-1
    sum=sum+2*f(a+i*h);
end

int=(sum)*(h/2);
disp('Value of required integral with trapezoidal rule with 4 segments is : ')
disp(int)

disp('Relative percentage error')
aplha=(abs(ana_sol-int)/ana_sol)*100;
disp(aplha)


% Simpson’s ⅓ rule

f=@(x) 8 + 4*cos(x);


a=0 ;            %Enter lower limit of integral 
b=pi/2;          %Enter upper limit of integral 

n=18;  %sub-intervals
h=(b-a)/n;
m=n/2;

A=f(a);
B=f(b);

sum1=0;
for i=1:2:n-1
    sum1=sum1 + 4*f(a+(i)*h);   
end

sum2=0;
for j=1:(n/2-1)
    sum2=sum2 + 2*f(a+(2*j)*h);
end

I=(A + sum1 + sum2 + B)*(h/3);

disp('Value of integral with simpson 1/3 rule is : ')
disp(I)

disp('Relative percentage error')
aplha=(abs(ana_sol-I)/ana_sol)*100;
disp(aplha)

% Simpson’s ⅜ rule
f=@(x) 8 + 4*cos(x);


a=0 ;            %Enter lower limit of integral 
b=pi/2;          %Enter upper limit of integral 


n=66;  %sub-intervals
h=(b-a)/n;
m=n/2;

A=f(a);
B=f(b);

sum1=0;
for i=2:3:n-1
    sum1=sum1 + 3*f(a+(i)*h);   
end

sum2=0;
for i=3:3:n-3
    sum1=sum1 + 3*f(a+(i)*h);   
end

sum3=0;
for i=4:3:n-2
    sum3=sum3 + 2*f(a+(i)*h);   
end

I=(A + sum1 + sum2 + sum3 + B)*(3*h/8);

disp('Value of integral with simpson 3/8 rule is : ')
disp(I)

disp('Relative percentage error')
aplha=(abs(ana_sol-I)/ana_sol)*100;
disp(aplha)

% Composite Simpson’s rule with 4 segments

f=@(x) 8 + 4*cos(x);


a=0 ;            %Enter lower limit of integral 
b=pi/2;          %Enter upper limit of integral 

n=4;        %Composite Simpson’s rule with 4 segments
h=(b-a)/n;
m=n/2;

A=f(a);
B=f(b);

sum1=0;
for i=1:2:n-1
    sum1=sum1 + 4*f(a+(i)*h);   
end

sum2=0;
for j=1:(n/2-1)
    sum2=sum2 + 2*f(a+(2*j)*h);
end

I=(A + sum1 + sum2 + B)*(h/3);

disp('Value of integral with composite simpson’s rule with 4 segments is : ')
disp(I)

disp('Relative percentage error')
aplha=(abs(ana_sol-I)/ana_sol)*100;
disp(aplha)

