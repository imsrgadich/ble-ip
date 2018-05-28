function [zval,p,H] = ztest2(x,y,mux,muy,varx,vary)
% Two sample z-test to determine if sample means are equal or unequal.
% input
% x - sample 1
% y - sample 2
% mux - mean of x to be used in difference. If you are not testing a
% specific difference, use mux = 0
% muy - mean of y. If you are not testing a
% specific difference, use muy = 0
% varx - variance of x
% vary - variance of y
% output 
% zval - z score
% p - p value
% H - if equal to zero = null hypothesis accepted
%                 one  = null hypothesis accepted.

if nargin < 3
    mux=0;
    muy=0;
    varx = var(x);
    vary = var(y);
end
    
Nx = length(x);
Ny = length(y);
zval = ((mean(x)-mean(y))-(mux-muy))/sqrt(varx/Nx+vary/Ny);

% for alpha = 0.05, the decision criterion for accepting null hypothesis is
% that zval lies in between [-7.5909, 7.5909] else reject it. 
% norminv([0.025 0.975],0,sqrt(15))n - assumed 15 as the variance.


% p value

% Calculate the probability (area under the curve) till the z statistic.
% Subtract it from 1 and multiply by 2, as it is two tail test.
% +-6.1980

a=normcdf(abs(zval),0,sqrt(10));
%b=normcdf(-zval,0,15);

p = (1-a)*2;

if (0.05 < p)
    H = 0; 
else
    H = 1;
end

end