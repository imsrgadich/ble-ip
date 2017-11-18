%% This is the run file for the Indoor positioning 

%  'log(constant.constSigma2)'
%  'log(sexp.magnSigma2)'
%  'log(sexp.lengthScale x 2)'
%  'log(gaussian.sigma2)'

%% Task 1: Create the reference map.

% get locations
%load('/home/imsrgadich/Documents/gitrepos/aalto/indoor_position_fingerprint/data/helvar_rd/locations.mat')
% load('../data/aalto_kwarkki/reference_map/reference_map_updated.mat')
% reference_map = reference_map_updated;
options.training_file_location = '/home/imsrgadich/Documents/gitrepos/helvar/ble-ip-helvar/data/helvar_rd/calibration_data/';
options.num_train_points = 63;
options.num_beacons = 28;

% training data from files
%text_files = get_training_data();
          
% Reference map, RSS values for BLE beacons and WiFi routers and
% correponding ID's. Check load_data for details.
[reference_map, ~, ~,id_beacon,~,options] = get_reference_map(options);

% test data: lets just take the mean of the data for now.
options.reference_map = reference_map;
train_data = reference_map(:,3:max(id_beacon));

% FIXME get the test data
%test_data = get_test_data();

% %% use k-NN for interpolating model: k=1
% 
% %% Task 2: Radio map: estimating the RSS values all the other locations.
% % For this we are using GP regression using GPStuff.

% predictive locations
x = 0:0.5:15;
y = 0:0.5:32;

[X_test,Y_test] = meshgrid(x,y);
test_points = [X_test(:) Y_test(:)];

%%  Train GP with the reference map.
% The location (x,y) is the latent variable with the RSS values are the
% measurements. 
% The process model we use here is y_i = f(x_i) + n, n ~ N(0,sigma_n^2)

% Using the GPStuff 4.6 package (using few initial parameter values as 
% given in the toolbox)

clear ('gp','gpcf','lik','pn','pl','pm','w','opt')
% likelihood
lik = lik_gaussian('sigma2',4^2, 'sigma2_prior', prior_logunif());

% kernels
gpcf_const = gpcf_constant('constSigma2',75, 'constSigma2_prior', prior_gaussian('mu',75, 's2', 20));

gpcf_se = gpcf_sexp('lengthScale', [3 3], ...
                    'lengthScale_prior', prior_gaussian('mu',3, 's2', 2),...
                     'magnSigma2', 5^2,...
                     'magnSigma2_prior', prior_gaussian('mu',5^2, 's2', 3^2));

gp = gp_set('lik',lik,'cf',{gpcf_se gpcf_const});
% gp = gp_set('lik',lik,'cf',{gpcf_se gpcf_const});
opt = optimset('TolFun',1e-3,'TolX',1e-3,'Display','iter');

for i = 3 : max(id_beacon)
    fprintf('Optimizing Luminaire %d\n',i-2);
    [gp]=gp_optim(gp,reference_map(:,1:2),reference_map(:,i),'opt',opt);
    % get the log of parameters
    options.parameters(i-2,:) = gp_pak(gp);
    [mean_gp, var] = gp_pred(gp, reference_map(:,1:2),reference_map(:,i), test_points);
    
    %figure(i-2), surf(X_test,Y_test,reshape(mean_gp,65,31))
    %figure(i), gp_plot(gp,reference_map(:,1:2),reference_map(:,i))
end

save('/home/imsrgadich/Documents/gitrepos/helvar/ble-ip-helvar/mat_files/code_param/options','options')







