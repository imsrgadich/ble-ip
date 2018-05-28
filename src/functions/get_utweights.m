function options = get_utweights(options, alpha, beta, kappa)


n = options.N_states; %number of states
% use default values of alpha, beta and kappa. 
if nargin < 2
        alpha = 0.5;
end

if nargin < 3
    beta = 2; % optimal for gaussian assumption of the posterior state.
end

if nargin < 4
    kappa = 3-n; % optimal for gaussian assumption of the posterior state.
end

options.lambda = alpha^2 * (n + kappa) - n;
options.WM = zeros(2*n+1,1);
options.WC = zeros(2*n+1,1);
options.R =  10*eye(options.N_meas);
        
for j=1:2*n+1
    if j==1
        wm = options.lambda / (n + options.lambda);
        wc = options.lambda / (n + options.lambda) + (1 - alpha^2 + beta);
    else
        wm = 1 / (2 * (n + options.lambda));
        wc = wm;
    end
    options.WM(j) = wm;
    options.WC(j) = wc;
end