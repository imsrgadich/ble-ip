function options = get_model_param(options)


%% Switch to select measurement model
% 1 for GP
% 2 for Pathloss model

options.meas_model_switch =1;

%% Switch to select the method
% 1 Grid Filter
% 2 Unscented Kalman Filter
% 3 Particle Filter.
options.method = 3; % redundant in triton run codes.


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
    
%options.dt =1;

% options.g = @(T) [0.5*T*T 0       0;
%                   0       0.5*T*T 0;
%                   T       T       0;
%                   0       0       1];

% Process noise: only for location and angle measurement.              
options.Q = 10^-1*eye(4);

options.N_states = 4;
options.N_meas =1;
end