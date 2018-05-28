function time_calib = read_params_1(job_id)

% there are 25 files in the directory, one each for a job.
sprintf('inside read parameters')

filename = strcat('/m/cs/work/gadichs1/ip/ble-ip-helvar/triton_files/calibration_time/',num2str(job_id),'.csv');
time_calib = csvread(filename);
end