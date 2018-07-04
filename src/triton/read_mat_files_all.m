function read_mat_files_all(file_location)
% for calibration time.

rmse_1 = @(x,y) sqrt(mean(sum((x - y).^2,2),1));

%cd file_location;


load('/Users/srikanth.gadicherla/Documents/gitrepos/helvar/ble-ip-helvar/mat_files/test_files/test_data_new.mat')

count = 1;

for calib_points = 1:12
    for calib_time = 1:25 % number of elements in the directory
        load([file_location '/' num2str(count) '.mat']);
        
%         clearvars -except calib_points calib_time num_file rmse rmse_all_pf ...
%                    rmse_pf_perse train_points time_calib m_true...
%            rmse_all_ukf rmse_ukf_perse rmse_pf_var_perse rmse_ukf_var_perse ...
%             rmse_1 file_location count m_UKF options y time_points_calib;
% load('/Users/srikanth.gadicherla/Documents/gitrepos/helvar/ble-ip-helvar/mat_files/test_files/test_data_new.mat')
% clearvars -except m_true file_location rmse_1

        if size(m_PF,1) == 885
            m_true = m_true(1:885,:);
        end
        m_true_augm = repmat(m_true,1,1,100);
        rmse_all_ukf(:,count) = squeeze(rmse_1(m_true_augm,m_UKF(:,1:2,:)));
        rmse_all_pf(:,count) = squeeze(rmse_1(m_true_augm,m_PF(:,1:2,:)));
        rmse_ukf_perse(calib_points,calib_time) = mean(rmse_all_ukf(:,count));
        rmse_ukf_var_perse(calib_points,calib_time) = var(rmse_all_ukf(:,count));
        rmse_pf_perse(calib_points,calib_time) = mean(rmse_all_pf(:,count));
        rmse_pf_var_perse(calib_points,calib_time) = var(rmse_all_pf(:,count));
        time_points_calib(calib_points,calib_time,:) = [options.time_calib,
                                                     options.num_train_points,
                                                     length(y)];
        count = count+1;
    end
end

figure, hold on
for i = 1:12
    plot(time_calib(i,:), rmse_ukf_perse(i,:),'LineWidth',1.2)
    hold on 
end
    [l,p] = boundedline(time_calib, rmse_pf_perse, rmse_pf_var_perse,'-b'); %train_points, rmse_pf, e1, '-b*',
    outlinebounds(l,p);
xlabel('Time for calibration')
ylabel('RMSE error')
legend('ukf','95% confidence interval','pf','Orientation','horizontal')

matlab2tikz()

% extra comment it
heatmap(rmse_ukf_perse)
colorMap = jet(256);
colormap(colorMap);   % Apply the colormap
colormap(flipud(hot))
caxis([3, 4.7465]);
xlabel('Calibration points')
ylabel('Calibration time')


end