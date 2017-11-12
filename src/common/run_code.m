clear all, clc;
clf;
%% Switch to select measurement model
% 1 for GP
% 2 for k-NN

options.meas_model_switch =2;


%% Switch to select the method
% 1 Grid Filter
% 2 Unscented Kalman Filter
% 3 Particle Filter.
method = 1;

%% load the parameters from GP regression training.
load('../data/parameter_trained.mat')
options.parameters = parameters;
load('../data/location.mat');
options.locations = locations;
load('../data/reference_map/reference_map_updated.mat')
options.reference_map = reference_map_updated;

%options.omega = 0.0001; %frequency
options.T = 1;

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

% options.g = @(T) [0.5*T*T 0       0;
%                   0       0.5*T*T 0;
%                   T       T       0;
%                   0       0       1];

% Process noise: only for location and angle measurement.              
options.Q = 2^2*eye(4);

%% Get the test data

test_data = get_test_data();

%% Filter Initializations
P_F(:,:,1) = 10*eye(options.N_states);
m_F(1,:) = [0 2.5 0 0];

%% Particle Filter for N_seeds iterations
% Check the filter for various # of paricles.

options.numSamples = 800;
options.N_states = 4;

SX = gauss_rand(m_F(1,:)',P_F(:,:,1),options.numSamples)';
w = (1/options.numSamples)*ones(options.numSamples,1);
i=2;
done = false;

%% Get the test data

test_data = get_test_data();
test_data_comb = [test_data{1,1};
                  test_data{1,2};
                  test_data{1,3};
                  test_data{1,4};
                  test_data{1,5};
                  test_data{1,6};
image = imread('../image/floor-plan.jpg');
image=rgb2gray(image); imshow(image), hold on
%figure(1),clf, hold on


%% Implementation for Grid Filter. 10th November.

%% Grid filter initialization
x = 1:3;  %% x-5:0.01:x+5
y = 1:5;  %% y-5:0.01:y+5
[X,Y] = meshgrid(x,y);

% First need to send the previous location.

switch method
    case 1 
        %% for grid filter
        while ~done
            
            
            
            
            if i >100
                done = true;
            end
            
        end
        
    case 2
        %% for unscented kalman filter
        

    case 3
        %% for particle filter
        
            for j = 1: size(test_data_1,1)
                disp(i)
                r = randn(options.numSamples,options.N_states);
                % Call the PF function
                [m,P,pf] =gp_pf(SX,test_data_1(j,:),w,r,i,options);
                m_F(i,:) = m;
                P_F(:,:,i) = P;
                SX = pf.SX;
                %neff(i) = pf.neff;
                kHat(i,1) = pf.kHat;
                w = pf.w;
                %plot(m_PF(i,1),m_PF(i,2),'.','MarkerSize',20)
                plot(m_F(i,1)*26.6+5.5,129-m_F(i,2)*6.75,'.','MarkerSize',20)
                % Pause and draw
                drawnow;
                pause(.01)
                i = i+1;
                
               
            end
        
    otherwise
        warning('Unexpected number. Out of filtering methods')
        
end

figure,scatter(m_F(:,1),m_F(:,2))

      