function run_code_all_new_plot(ref_map_flag)

%% get the calibration points and time to be used for gp regression.
options.file_nums = read_params(10); 
%  hardcoding for 15 calibration points use 10 as parameter
% 63 calib points use 1 as parameter
% 11 for 12 calib points
options.time_calib = read_params_1(24);
% 24 for 4 seconds
% 1 for 50 seconds
% 14 for 24 seconds
options.epsilon = 1; % should be between [0,1], we need resampling at everystep 
options.ref_map_flag = ref_map_flag; % 0 for old and 1 for new. 

%% Run the GP regression on them to get the optimal hyperparameters.
% Reference map, RSS values for BLE beacons and WiFi routers and
% correponding ID's. Check load_data for details.

options = gp_regression_beacon(options); % returns the options with 
                                          % updated parameters
% RMSE error. sum over dimensions, mean over all the values, then sqrt.                                          
rmse = @(x,y) sqrt(mean(sum((x - y).^2,2),1));
                                               
%% Run filter for 100 MC iterations and get the average error.                                                
% Run tracking for PF with resampling at every step (to exclude the non
% performance of PF)for 100 MC iterations.

% Lock random seed
rng(2,'twister');
N_seeds = 1;
seeds = round(10^5*rand(N_seeds,1));

% Set the basics for the filtering
options = get_model_param(options);


%% Get the test data
%testData = test_data{3};
% [~,time,id,y,m_true] = get_test_data(options);
% y = y{1};
% id = id{1}; %beacon id
% time = [time{1}]';
% m_true = m_true{1,1};

% loads all the above variables.
y=[];id=[];time=[];m_true=[];
load('../../mat_files/test_files/test_data_new.mat')

sprintf('Running the filters now.')

for i = 1:N_seeds
    
    % changing the seed of the 
    rng(seeds(i),'twister')
    % initialization for unscented kalman filter
    options = get_ukf_param(options);
    
    %intialization for particle filters.
    P_UKF(:,:,1,i) = eye(options.N_states);
    m_UKF(1,:,i) = [1.379 0.805 0.001 0];
    
    P_PF(:,:,1,i) = 3*eye(options.N_states);
    m_PF(1,:,i) = [1.379 0.805 0.001 0];
    options.numSamples = 1000;
    SX = gauss_rand(m_PF(1,:,i)',P_PF(:,:,1,i),options.numSamples)';
    w = (1/options.numSamples)*ones(options.numSamples,1);
    
    % filtering starts
    for j = 2: size(y,1)
        sprintf('MC interation %d, step %d',i,j)
        options.dt = time(j,1) - time(j-1,1);
        %% unscented kalman filter
        % send in previosu mean, covariance and other options.
        [m,P,ukf] = gp_ukf(m_UKF(j-1,:,i), P_UKF(:,:,j-1,i),y(j,:),id(j,:),options);
        
        m_UKF(j,:,i) = m;
        P_UKF(:,:,j,i) = P;
        save_ukf{i}= ukf;
        gain(:,j,i) = ukf.gain';
        
        %% particle filter
        % Particle Filter for N_seeds iterations
        r = randn(options.numSamples,options.N_states);
        % Call the PF function
        [m,P,pf] =gp_pf(SX,y(j,:),id(j,:),w,r,j,options);
        m_PF(j,:,i) = m;
        P_PF(:,:,j,i) = P;
        SX = pf.SX;
        neff(j,i) = pf.neff;
        w = pf.w;
    end
    rmse_pf(i) = rmse(m_true,m_PF(:,1:2,i))
    rmse_ukf(i) = rmse(m_true,m_UKF(:,1:2,i))
    abs_error_pf = abs(sqrt(sum((m_true-m_PF(:,1:2,i)).^2,2)));
    abs_error_ukf = abs(sqrt(sum((m_true-m_UKF(:,1:2,i)).^2,2)));
     
end

mean_error_pf = mean(abs_error_pf)
mean_error_ukf = mean(abs_error_ukf)
ninty_prctile_pf = prctile(abs_error_pf,90)
ninty_prctile_ukf = prctile(abs_error_ukf,90)
max_error_pf = max(abs_error_pf)
max_error_ukf = max(abs_error_ukf)
var_error_pf = var(abs_error_pf)
var_error_ukf = var(abs_error_ukf)



    
%% Save the workspace to ~/workspace
sprintf('saving the workspace to triton_files/workspace/calibration_points_time/%d.mat\n',job_id)
path_string = sprintf('/m/cs/work/gadichs1/ip/ble-ip-helvar/triton_files/workspace/calibration_points_time/%d.mat',job_id);
save(path_string)
 
end

% get the mean of errors and plot them. so plot # of calib points on x and
% error on y.