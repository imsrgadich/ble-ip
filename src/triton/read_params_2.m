function [num_part, neff] = read_params_2(job_id)

% there are nine files in the directory, one each for a job.
sprintf('inside read parameters')

filename = strcat('/m/cs/work/gadichs1/ip/ble-ip-helvar/triton_files/pf_best_params/',num2str(job_id),'.txt');
params = dlmread(filename,',');
num_part = params(1);
neff = params(2);
end