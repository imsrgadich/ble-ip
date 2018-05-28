% This code creates the parameters file which would be used by the
% triton_run_code.
% only for Gaussian Linear Noise

%% Parameters
% epsilon - the grid for getting the neff and khat values.
%           neff = epsilon * N; khat = 1 - 3 * epsilon (except when epsilon
%           is zero, kHat is infinity)
% model = Linear Gaussian [1], Stochastic Oscillator [2], UNGM [3]
% Tail percentage = 10%, 20%

% Write to a file in each iteration

% count = 1;
% for num_par = [100,500,1000,10000]
%     for neff = 0.1:0.05:1
%         filename = [num2str(count) '.txt'];
%         fid=fopen(filename,'w');
%         fprintf(fid, '%d,%f\n', [num_par neff]');
%         fclose(fid);
%         count = count + 1;
%     end
% end


%  [63,57,51,45,39,33,27,21,18,15,12,6]
count = 1;
for calib_points = 1:12
    for calib_time = 1:25
        filename = [num2str(count) '.csv'];
        fid=fopen(filename,'w');
        fprintf(fid, '%d,%d\n', [calib_points calib_time]');
        fclose(fid);
        count = count + 1;
    end
end