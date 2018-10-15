function options = gp_regression_beacon(options)
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
options.training_file_location = '../../triton_files/calibration_data/';
options.num_train_points = length(options.file_nums);
options.num_beacons = 28; % this is constant
options.max_id_beacon = 30; % this is also constant
% training data from files
%text_files = get_training_data();

% Reference map, RSS values for BLE beacons and WiFi routers and
% correponding ID's. Check load_data for details.
if options.ref_map_flag == 0
    sprintf('Using old reference map')
    [reference_map,~,options] = get_reference_map(options);
else
    sprintf('Using new reference map')
    [reference_map,~,options] = get_reference_map_new(options);
end

% test data: lets just take the mean of the data for now.
options.reference_map = reference_map;

% uncomment if you want to plot.
% % predictive locations
% x = -10:0.5:15;
% y = -10:0.5:32;
%
% [X_test,Y_test] = meshgrid(x,y);
% test_points = [X_test(:) Y_test(:)];

%%  Train GP with the reference map.
% The location (x1,x2) is the latent variable with the RSS values are the
% measurements.
% The process model we use here is y_i = f(x_i) + n, n ~ N(0,sigma_n^2)
% where y_i is the measurement and x_i is the location.
% Using the GPStuff 4.6 package (using few initial parameter values as
% given in the toolbox)
[gp,opt] = gp_model_1();


for i = 3: options.max_id_beacon

    %fprintf('Optimizing Luminaire %d\n',i-2);
    if  iscell(options.reference_map)
        % new reference map
        temp_map = reference_map{i-2};
        [gp]=gp_optim(gp,temp_map(:,1:2),temp_map(:,3),'opt',opt);
    else
        % old reference map
        [gp]=gp_optim(gp,reference_map(:,1:2),reference_map(:,i),'opt',opt);
    end

    % get the log of parameters
    options.parameters(i-2,:) = gp_pak(gp);

    % uncomment if you want to plot.
    %[mean_gp, var] = gp_pred(gp, temp_map(:,1:2),temp_map(:,3), test_points);
    %figure(i-2), surf(X_test,Y_test,reshape(mean_gp-102-10,size(X_test)))
    %figure(i-2), gp_plot(gp,temp_map(:,1:2),temp_map(:,3))
end

options.jitter = gp.jitterSigma2;

%% Compute the K

param = exp(options.parameters);


    for i = 1:size(param,1)
        if iscell(options.reference_map)
            A = options.reference_map{1,i};
            A = A(:,1:2);
        else
            A = options.reference_map(:,1:2);
        end
        temp = gaussian_kernel(A,A,param(i,2:3),param(i,1))...
            + param(i,4)*eye(size(A,1)) + 10^-6;
        %+ param(i,4)+param(i,5)*eye(size(A,1));
        options.K{i} = temp;
    end

end

%save('/home/imsrgadich/Documents/gitrepos/helvar/ble-ip-helvar/mat_files/code_param/options_new_ref_2','options')

% uncomment if you want to plot.
% im= imread('/home/imsrgadich/Documents/gitrepos/helvar/ble-ip-helvar/images/floorplan.png');
% figure,image(im)
% hold on,contour(1958.5-(Y_test*61.2031),913.4651-(X_test*60.8977),reshape(mean_gp-102-10,85,51),50)
% colorbar
% title('Radio-map for 8CAA luminaire')
