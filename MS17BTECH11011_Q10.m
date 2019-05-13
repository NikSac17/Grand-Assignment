clear all
clc

a=[1:1:10];     % x
b=log(a);       % b=ln(x)

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

P=collect(sum);

x=1.43;
y=subs(P);
fprintf('Value of interpolated function at %f is %f.\n',x,y)
fprintf('Actual value at %f is %f.\n\n',x,log(x))

x=5.78;
y=subs(P);
fprintf('Value of interpolated function at %f is %f.\n',x,y)
fprintf('Actual value at %f is %f.\n\n',x,log(x))

x=10.01;
y=subs(P);
fprintf('Value of interpolated function at %f is %f.\n',x,y)
fprintf('Actual value at %f is %f.\n\n',x,log(x))
