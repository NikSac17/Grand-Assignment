clc
n=3;   %number of iterations

h0=2;

f=@(h) pi*h.^3 - 9*pi*h.^2 + 90;
f1= @(h) 3*pi*h.^2 - 18*pi*h;
h=h0;
    for i=1:n
            h=h-f(h)/f1(h);
            err=abs(0-f(h));
            fprintf('Error at %d th iteration is %f.\n',i,err)
    end
   
    
fprintf('Value of h is %f.\n\n',h);


h=linspace(0,10);
y= pi*h.^3 - 9*pi*h.^2 + 90;
plot(h,y)
grid on


%ignoring other root because h cannot be greater than 2R i.e., 6