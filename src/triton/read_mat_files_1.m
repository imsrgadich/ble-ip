function read_mat_files_1(file_location)
% for calibration time.

rmse_1 = @(x,y) sqrt(mean(sum((x - y).^2,2),1));

%cd file_location;

for num_file=1:size(dir([file_location '/*.mat']),1)  % number of elements in the directory
    clearvars -except num_file rmse rmse_all_pf rmse_pf train_points time_calib...
           rmse_all_ukf rmse_ukf rmse_pf_var rmse_ukf_var rmse_1 file_location;
    load([file_location '/' num2str(num_file) '.mat']);
    load('/Users/srikanth.gadicherla/Documents/gitrepos/helvar/ble-ip-helvar/mat_files/test_files/test_data_new.mat')
    
    if size(m_PF,1) == 885
        m_true = m_true(1:885,:);
    end
    m_true_augm = repmat(m_true,1,1,100);
    rmse_all_ukf(:,num_file)=squeeze(rmse_1(m_true_augm,m_UKF(:,1:2,:)));
    rmse_all_pf(:,num_file)=squeeze(rmse_1(m_true_augm,m_PF(:,1:2,:)));
    rmse_ukf(num_file) = mean(rmse_all_ukf(:,num_file));
    rmse_ukf_var(num_file) = var(rmse_all_ukf(:,num_file));
    rmse_pf(num_file) = mean(rmse_all_pf(:,num_file));
    rmse_pf_var(num_file) = var(rmse_all_pf(:,num_file));
    time_calib(num_file) = options.time_calib; %options.num_train_points;
end

figure,
plot(time_calib, rmse_ukf,'m','LineWidth',1.2)
hold on
[l,p] = boundedline(time_calib, rmse_pf, rmse_pf_var,'-b'); %train_points, rmse_pf, e1, '-b*',
outlinebounds(l,p);
xlabel('Time for calibration')
ylabel('RMSE error')
legend('ukf','95% confidence interval','pf','Orientation','horizontal')

matlab2tikz()

% new figure without bounded lines
figure,
hold on, plot(time_calib, rmse_ukf,'m','LineWidth',1.2,'Color',[0.9290, 0.6940, 0.1250])
hold on, plot(time_calib, rmse_pf,'m','LineWidth',1.2,'Color',[0.4940, 0.1840, 0.5560])
xlabel('Time for calibration')
ylabel('RMSE error')
legend('ukf_old','pf_old','Orientation','horizontal')


end