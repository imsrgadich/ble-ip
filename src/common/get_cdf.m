% function to get the CDF values. 

function [x,y_cdf]=get_cdf(y)
min_y = min(y);
max_y = max(y);

% plotting in steps of 1
x= min_y:1:max_y;
y = sort(y);
y_norm = y/sum(y);
y_cdf = zeros(size(x));
for i = 1:size(x,2)
    y_cdf(i)= sum(y_norm(y <= x(i)));
end