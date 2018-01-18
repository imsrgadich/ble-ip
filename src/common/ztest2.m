function [zval,H] = ztest2(x,y,mux,muy,varx,vary)
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
% that zval lies in between [-1.96,1.96] else reject it. 

if (-1.96 < zval) && (zval < 1.96)
    H = 0; 
else
    H = 1;
end

