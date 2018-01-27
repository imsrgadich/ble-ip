function [f_interval,H] = f_test(x,y)
% % analysis of variance using f distribution for alpha level of significance
% % 5%
% input
% x - sample 1
% y - sample 2
% 
% output
% f_interval - interval of ratio estimate
% H - 0 if null hypothesis is accepted.
%     1 if null hypothesis is rejected.

% from F-distribution tables F_0.025 = 0.24096
%                            F_0.975 = 14.25

F_a_2 = 0.24096;
F_1_a_2 = 14.25;

% s1 always needs to be higher variance
if var(x) > var(y)
    s1 = var(x);
    s2 = var(y);
else
    s1 = var(y);
    s2 = var(x);
end

sample_var_ratio = s1/s2;

f_interval = [sample_var_ratio/F_1_a_2 sample_var_ratio/F_a_2];

if (f_interval(1) < 1) && (f_interval(2) > 1) % check if 1 is in the interval
    H = 0; % then null hypothesis accepted.
else
    H = 1; % null hypothesis rejected.
end


end
