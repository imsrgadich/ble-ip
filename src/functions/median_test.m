function [chi_2_val,H] = median_test(x,y)
% the median test to show if two samples have same median or not.
% input 
% x - sample 1
% y - sample 2
% 
% output
% chi_2_val - chi2 statistic
% H - 0 if null hypothesis accepted
%     1 if null hypothesis rejected.
%         
% Inference: chi_2_val should be less than 3.841 for null hypothesis to 
% be accepted. given alpha is 0.05

% Get the elements of the contingency table
median_com = median([x y]); %common median

a = size(find(x > median_com),2); % number of elements of x above common median
c = size(find(x < median_com),2); % number of elements of x below common median

b = size(find(y > median_com),2); % number of elements of y above common median
d = size(find(y < median_com),2); % number of elements of y below common median

n = 2*(a+b+c+d);

chi_2_val = (n * ((a*d) - (b*c))^2) ./ ((a+c)*(b+d)*(a+b)*(c+d));

if chi_2_val < 3.841
    H = 0;
else
    H =1;
end
end