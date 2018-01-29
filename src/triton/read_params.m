function file_nums = read_params(job_id)

% there are nine files in the directory, one each for a job.
addpath('/m/cs/scratch/psis-pf/temp/triton_files/calibration_points/')
sprintf('inside read parameters')

filename = [num2str(job_id) '.csv'];

file_nums = csvread(filename);

