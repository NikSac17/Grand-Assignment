clc
format long
f=@(x) cos(x);
x1=pi/4;


%using h=pi/3
h=pi/3;
tol=10^-8;

for i=1:10
    
    df1=(f(x1+h)-f(x1-h))/(2*h);
    h=h/2;
    df2=(f(x1+h)-f(x1-h))/(2*h);
    
    TV=df2 + (df2-df1)/3;
    
end

fprintf('Derivative at %f is using h=pi/3\n',x1);
disp(TV)


%using h=pi/6
h=pi/6;
tol=10^-8;

for i=1:10
    
    df1=(f(x1+h)-f(x1-h))/(2*h);
    h=h/2;
    df2=(f(x1+h)-f(x1-h))/(2*h);
    
    TV=df2 + (df2-df1)/3;
    
end

fprintf('Derivative at %f is using h=pi/6\n',x1);
disp(TV)