function triton_run_code_2_new(job_id, ref_map_flag)

% TRITON_RUN_CODE to run the code to find best pf params throug the file 
% with job id.

% add path to the project folder.
%addpath(genpath('/m/cs/scratch/psis-pf/Codes/temp'))
addpath(genpath('/m/cs/work/gadichs1/ip/ble-ip-helvar/src/'))

% get the number of calibration points via the file name number 
sprintf('inside triton run code for job %d',job_id)

% get the params for the pf
[options.numSamples,options.epsilon] = read_params_2(job_id);

warning('use the best parameters from the calib points and calib time experiments')
%% get the calibration time to be used for gp regression.
options.time_calib = read_params_1(9);
options.ref_map_flag = ref_map_flag; % 0 for old and 1 for new. 

%% file numbers. 
options.file_nums = read_params(9); % for now lets use least number of files.

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
N_seeds = 100;
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
load('/m/cs/work/gadichs1/ip/ble-ip-helvar/mat_files/test_files/test_data_new.mat')

sprintf('Running the filters now.')

for i = 1:N_seeds
    sprintf('MC interation %d',i)
     % changing the seed of the 
    rng(seeds(i),'twister')
    
    %intialization for particle filters.
    
    P_PF(:,:,1,i) = 3*eye(options.N_states);
    m_PF(1,:,i) = [1.379 0.805 0.001 0];

    SX = gauss_rand(m_PF(1,:,i)',P_PF(:,:,1,i),options.numSamples)';
    w = (1/options.numSamples)*ones(options.numSamples,1);
    
    % filtering starts
    for j = 2: size(y,1)
        options.dt = time(j,1) - time(j-1,1);
        
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
      
end

%  % get the rmse errors
%  rmse_pf = rmse(m_true,m_PF(:,1:2));
%  rmse_ukf = rmse(m_true,m_UKF(:,1:2));
    
%% Save the workspace to ~/workspace
sprintf('saving the workspace to triton_files/workspace/pf_best_params/%d.mat\n',job_id)
path_string = sprintf('/m/cs/work/gadichs1/ip/ble-ip-helvar/triton_files/workspace/pf_best_params/%d.mat',job_id);
save(path_string)
end

% get the mean of errors and plot them. so plot # of calib points on x and
% error on y.
