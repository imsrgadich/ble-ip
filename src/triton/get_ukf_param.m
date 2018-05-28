function options = get_ukf_param(options)
% GET_UKF_PARAMS to get the WM, WC and R for the UKF filtering

alpha = 0.5*10^-3;
% beta = 0.5;
% kappa = 3;

options = get_utweights(options,alpha);

end
