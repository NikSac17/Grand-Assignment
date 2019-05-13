clc

A=[0.90 1.42 1.30 1.55 1.63 1.32 1.35 1.47 1.95 1.66 1.96 1.47 1.92 1.35 1.05 1.85 1.74 1.65 1.78 1.71 2.29 1.82 2.06 2.14 1.27];
format long

%mean
sum=0;
for i=1:length(A)
    sum=sum+A(1,i);
end
me_an=sum/length(A);
fprintf('Mean of given data is %f.\n\n',me_an)


%standard deviation
sum=0;
for i=1:length(A)
    sum=sum+ ((A(1,i)-me_an).^2)/length(A);
end
stan_dev=sqrt(sum);
fprintf('Standard deviation of given data is %f.\n\n',stan_dev)


%variance
var=(stan_dev).^2;
fprintf('Variance of given data is %f.\n\n',var)


%coefficient of variation
coef_var=(stan_dev/me_an).*100;
fprintf('Coefficient of variation of given data is %f.\n\n',coef_var)



