function params= read_params_all(job_id)

% there are nine files in the directory, one each for a job.
sprintf('inside code parameters read')

filename = strcat('../../triton_files/calibration_points_time/',num2str(job_id),'.csv');
params = csvread(filename);
end