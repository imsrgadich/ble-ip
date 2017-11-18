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

function [] = gpPred(HX,options)

%% GRPRED Gaussian process prediction function
% input:
%      HX - sigma points
%      options:
%           parameters - optimized parameters from GP regression
%           locations - calibration points
%           reference_map - the mean RSSI values for the BLE nodes.
% output:
%     y_star - predicted RSSI values at the  


parameters = exp(options.parameters);
train_data = options.locations;
reference_map = options.reference_map(:,3:end);

% Here in each iteration we are getting the predicted RSSI for a particular
% beacon at all the points.
for i = 1:size(options.parameters,1)
        
    
        K = gaussian_kernel(train_data,train_data,parameters(i,3:4),parameters(i,2))+ parameters(i,1)+parameters(i,5);
        k_star = gaussian_kernel(train_data,HX,parameters(i,3:4),parameters(i,2))+ parameters(i,1);
        K_ = gaussian_kernel(HX,HX,parameters(i,3:4),parameters(i,2))+ parameters(i,1);
        %
        L = chol(K,'lower');
        Lk = L \ k_star;
        
        % mean_star is an estimate of the predicted RSSI value at the test
        % locations (particles or grid values)
        y_star = Lk'*(L\reference_map(:,i));
        
        % Simple correction for the RSSI predicted values.
        % FIXME add the floor plan restrictions.
        % FIXME update the reference map.
        y_star(y_star < 0 | y_star > 55) = options.min_rssi;
        
        


end

