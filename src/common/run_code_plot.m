clear all, clc;

%% load the parameters from GP regression training.

load('../../mat_files/code_param/options_new_ref_1.mat')
load('../../mat_files/test_files/test_data.mat')

%% Switch to select measurement model
% 1 for GP
% 2 for kNN

options.meas_model_switch =1;

%% Switch to select the method
% 1 Grid Filter
% 2 Unscented Kalman Filter
% 3 Particle Filter.
options.method = 2;

%options.omega = 0.0001; %frequency
%options.T = 1;

% Dynamic model Augmented Turn Coordinated Model
% options.f = @(x,xdot,y,ydot,T,omega) ...
%     [x+(xdot.*sin(omega*T)./omega)-(ydot.*(1-cos(omega*T))./omega);
%      y+(xdot.*(1-cos(omega*T))./omega)+(ydot.*sin(omega*T)./omega);
%      sqrt(xdot.^2+ydot.^2);
%      omega];
% Dynamic model Augmented Turn Coordinated Model
% options.f = @(x,xdot,y,ydot,T,omega) ...
%     [x+(xdot.*sin(omega*T)./omega)-(ydot.*(1-cos(omega*T))./omega);
%      y+(xdot.*(1-cos(omega*T))./omega)+(ydot.*sin(omega*T)./omega);
%      sqrt(xdot.^2+ydot.^2);
%      omega];


% Quasi Constant model
options.A =@(dt) [1 0 dt 0;
        0 1 0 dt;
        0 0 1 0;
        0 0 0 1];
    
options.dt =1;

% options.g = @(T) [0.5*T*T 0       0;
%                   0       0.5*T*T 0;
%                   T       T       0;
%                   0       0       1];

% Process noise: only for location and angle measurement.              
options.Q = 2^2*eye(4);



%% Get the test data

%test_data = get_test_data(options);

%% Filter Initializations
options.N_states = 4;
P_F(:,:,1) = 3*eye(options.N_states);
m_F(1,:) = [1.379 0.805 0.001 0];
%m_F(1,:) = [0 0 0 0];
i=2;
done = false;

%% Get the test data
%testData = test_data{3};
% [~,time,id,y] = get_test_data(options);
load('../../mat_files/test_files/test_data_new.mat')
% testData = test_data{3};
% tt = [1:size(testData,1)]';
% idd = repmat([1:options.num_beacons]+2,size(testData,1),1);
tt = time;
testData = y;
idd = id;

clearvars time y id
%image = imread('../../images/floorplan.png');
%image=rgb2gray(image); 
%imshow(image), hold on
%figure(1),clf, hold on

% options.g = @(T) [0.5*T*T 0       0;
%                   0       0.5*T*T 0;
%                   T       T       0;
%                   0       0       1];

% Process noise: only for location and angle measurement.              
options.Q = 2^2*eye(options.N_states);

rmse_1 = @(x,y) sqrt(mean(sum((x - y).^2,2),1));

switch options.method
    case 1 
        %% Grid filter initialization
        x = 1:3;  %% x-5:0.01:x+5
        y = 1:5;  %% y-5:0.01:y+5
        [X,Y] = meshgrid(x,y);
        %% for grid filter
        while ~done
            
            done = true;
            continue;
            
            if i >100
                done = true;
            end
            
        end
        
    case 2
        options.N_meas =1;
        options.Q = 10^-1*eye(4);
        %% for unscented kalman filter
        im= imread('../../images/floorplan.png');
        figure, image(im), hold on
        temp_m = [1957-(m_true(:,2)*(1917/33.6)),891-(m_true(:,1)*(891/15.38))];
        plot(temp_m(:,1),temp_m(:,2),'-','Color',[0,0.5,1],'LineWidth',1.5), hold on
        temp_m = [];
        temp_avg_mean = [1957-(m_F(1,2)*(1917/33.6)),891-(m_F(1,1)*(891/15.38))];
        i = 0;
        
        options = get_utweights(options,0.5*10^-3);
        
        %% start the filtering

         for j = 2: size(testData,1)
            % send in previous mean, covariance and other options.
            options.dt = tt(j,1) - tt(j-1,1);
            [m,P] = gp_ukf(m_F(j-1,:), P_F(:,:,j-1),testData(j,:),idd(j,:),options);
            temp_m = [temp_m;m(1:2)']; 
            m_F(j,:) = m;
            P_F(:,:,j) = P;
            
            if tt(j,1) - i > 1
                 % transforming the means to plot coordinates.
                temp_m = [1957-(temp_m(:,2)*(1917/33.6)),891-(temp_m(:,1)*(891/15.38))];
                temp_avg_mean(2,:) = mean(temp_m,1);
                plot(temp_avg_mean(:,1),temp_avg_mean(:,2),'Color',[1 0 0],'LineWidth',2), hold on,
                plot(temp_avg_mean(2,1),temp_avg_mean(2,2),'o','Color',[0,1,0]), hold on,
                plot(1957-(m_true(j,2)*(1917/33.6)),891-(m_true(j,1)*(891/15.38)),'o','Color',[0,1,0]), hold on
                plot([temp_avg_mean(2,1),1957-(m_true(j,2)*(1917/33.6))],...
                    [temp_avg_mean(2,2),891-(m_true(j,1)*(891/15.38))],'Color',[0.5843 0.8157 0.9882],'MarkerSize',5), hold on,
                
                temp_avg_mean(1,:) = mean(temp_m,1);
                temp_m = [];
                i = i+1;
            end
             drawnow;
         end
        

    case 3
        %% particle filter
        % Particle Filter for N_seeds iterations
        % Check the filter for various # of paricles.
        options.epsilon = 0.5;
        im= imread('../../images/floorplan.png');
        figure, image(im), hold on
        temp_m = [1957-(m_true(:,2)*(1917/33.6)),891-(m_true(:,1)*(891/15.38))];
        plot(temp_m(:,1),temp_m(:,2),'-','Color',[0,0.5,1],'LineWidth',1.5), hold on
        temp_m = [];
        options.numSamples = 800;
        
        SX = gauss_rand(m_F(1,:)',P_F(:,:,1),options.numSamples)';
        w = (1/options.numSamples)*ones(options.numSamples,1);
        %figure, xlim([0,15]), ylim([0,35]), hold on
        i = 0; %
        temp_avg_mean = [1957-(m_F(1,2)*(1917/33.6)),891-(m_F(1,1)*(891/15.38))];
       
            for j = 2: size(testData,1)
                
                options.dt = tt(j) - tt(j-1);
                r = randn(options.numSamples,options.N_states);
                % Call the PF function
                [m,P,pf] =gp_pf(SX,testData(j,:),idd(j,:),w,r,j,options);
                temp_m = [temp_m;m(1:2)]; 
                m_F(j,:) = m;
                P_F(:,:,j) = P;
                SX = pf.SX;
                neff(j) = pf.neff;
                w = pf.w;
                
               if tt(j) - i > 1
                    % transforming the means to plot coordinates.
                    temp_m = [1957-(temp_m(:,2)*(1917/33.6)),891-(temp_m(:,1)*(891/15.38))];
                    temp_avg_mean(2,:) = mean(temp_m,1);
                    plot(temp_avg_mean(:,1),temp_avg_mean(:,2),'Color',[1 0 0],'LineWidth',2), hold on,
                    plot(temp_avg_mean(2,1),temp_avg_mean(2,2),'o','Color',[0,1,0]), hold on,
                    plot(1957-(m_true(j,2)*(1917/33.6)),891-(m_true(j,1)*(891/15.38)),'o','Color',[0,1,0]), hold on
                    plot([temp_avg_mean(2,1),1957-(m_true(j,2)*(1917/33.6))],...
                        [temp_avg_mean(2,2),891-(m_true(j,1)*(891/15.38))],'Color',[0.5843 0.8157 0.9882],'MarkerSize',5), hold on,
                    
                    temp_avg_mean(1,:) = mean(temp_m,1);
                    temp_m = [];
                    i = i+1;
               end     
               drawnow;
            end
            
    otherwise
        warning('Unexpected number. Out of filtering methods')      
end

%figure,scatter(m_F(:,1),m_F(:,2))

rmse_pf = squeeze(rmse_1(m_true_augm,m_UKF(:,1:2,:)));

path_string = sprintf('/m/cs/work/gadichs1/ip/ble-ip-helvar/mat_files/testing_positioning/pf_gp_1.mat');
save(path_string)
