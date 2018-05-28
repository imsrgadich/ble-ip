function file_nums = read_params(job_id)

% there are nine files in the directory, one each for a job.
sprintf('inside read parameters')

filename = strcat('/m/cs/work/gadichs1/ip/ble-ip-helvar/triton_files/calibration_points/',num2str(job_id),'.csv')
file_nums = csvread(filename);
end