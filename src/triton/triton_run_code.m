function triton_run_code(job_id)

% TRITON_RUN_CODE to run the code with changing number of calibration
% points given throug the file with job id.

% add path to the project folder.
%addpath(genpath('/m/cs/scratch/psis-pf/Codes/temp'))
addpath(genpath('/l/gadichs1/gitrepos/helvar/ble-ip-helvar/src'))
% get the number of calibration points via the file name number 
sprintf('inside triton run code')

%% get the calibration points to be used for gp regression.
options.file_nums = read_params(job_id);

%% Run the GP regression on them to get the optimal hyperparameters.
% Reference map, RSS values for BLE beacons and WiFi routers and
% correponding ID's. Check load_data for details.
 options = gp_regression_beacon(options); % returns the options with 
                                               %updated parameters
                                               
%% Run filter for 100 MC iterations and get the average error.                                                
% Run tracking for PF with resampling at every step (to exclude the non
% performance of PF)for 100 MC iterations.
for i = 1:100
    
    
    
end



% get the mean of errors and plot them. so plot # of calib points on x and
% error on y.