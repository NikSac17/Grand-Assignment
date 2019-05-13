clc
n=17;

%first root
x0=-1;
tol=10^-4;
f=@(x) 0.5*x.^3 - 4*x.^2 + 5.5*x -1;
f1= @(x) 1.5*x.^2 -8*x + 5.5;
x=x0;
    for i=1:n
            x=x-f(x)/f1(x);
    end
    xn=x;
    a=f(xn);
    r=abs(a-0);
    if r>tol
        warning('Desired accuracy not achieved.')
    end
fprintf('The first root is %f.\n\n',xn);


%second root
x0=2;
tol=10^-4;
f=@(x) 0.5*x.^3 - 4*x.^2 + 5.5*x -1;
f1= @(x) 1.5*x.^2 -8*x + 5.5;
x=x0;
    for i=1:n
            x=x-f(x)/f1(x);
    end
    xn=x;
    a=f(xn);
    r=abs(a-0);
    if r>tol
        warning('Desired accuracy not achieved.')
    end
fprintf('The second root is %f.\n\n',xn);


%third root
x0=7;
tol=10^-4;
f=@(x) 0.5*x.^3 - 4*x.^2 + 5.5*x -1;
f1= @(x) 1.5*x.^2 -8*x + 5.5;
x=x0;
    for i=1:n
            x=x-f(x)/f1(x);
    end
    xn=x;
    a=f(xn);
    r=abs(a-0);
    if r>tol
        warning('Desired accuracy not achieved.')
    end
fprintf('The third root is %f.\n\n',xn);


x=linspace(-2,8);
y=0.5*x.^3 - 4*x.^2 + 5.5*x -1;
plot(x,y)
grid on

%Graphically
fprintf('Graphically 1 st root is 0.1.\n\n')
fprintf('Graphically 2 nd root is 1.5.\n\n')
fprintf('Graphically 3 rd root is 6.4.\n\n')
