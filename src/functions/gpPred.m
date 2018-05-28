%% gpPred Prediction using the Gaussian Process regression
%  For sigma / grid / particles points we need to predict RSSI values for
%  all the BLE nodes. Take care that the correct parameters are set before
%  calling the prediction function.
%
% input:
%   HX - sigma / grid / particle points N x 2
%   options:
%
% output:
%

function [y_star,sigma_star] = gpPred(x,i,options)

%% GRPRED Gaussian process prediction function
% input:
%      x - points for predictions N x 2
%      i - the beacon id
%      options:
%           parameters - optimized parameters from GP regression
%           locations - calibration points
%           reference_map - the mean RSSI values for the BLE nodes.
% output:
%     y_star - predicted RSSI values at the


parameters = exp(options.parameters);

if  iscell(options.reference_map)
    reference_map = options.reference_map{i};
    train_data = reference_map(:,1:2);
    y = reference_map(:,3);
    K = options.K{i};
else
    reference_map = options.reference_map;
    train_data = reference_map(:,1:2);
    y = reference_map(:,i+2);
    K = options.K{i};
end

% Here in each iteration we are getting the predicted RSSI for a particular
% beacon at all the points.


        k_star = gaussian_kernel(train_data,x,parameters(i,2:3),parameters(i,1));%+ parameters(i,4);
        K_ = gaussian_kernel(x,x,parameters(i,2:3),parameters(i,1));
        %+ parameters(i,4)+parameters(i,5)*eye(size(x,1));
        %
        L = chol(K,'lower');
        %a = L'\(L\ reference_map(:,i));

        % mean_star is an estimate of the predicted RSSI value at the test
        % locations (particles or grid values)
        %y_star = k_star' * a;
        Lk = L \ k_star;

        y_star = Lk'*(L\y);
        sigma_star = sqrt(abs(diag(K_)' - sum(Lk.^2))');

        % Simple correction for the RSSI predicted values.
        % FIXME add the floor plan restrictions.
        % FIXME update the reference map.
        y_star(y_star < 10) = options.min_rssi+115;
