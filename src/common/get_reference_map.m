%% load the txt files here using the load_data function.
%% Get the RSS, WIFI data for each measurement location 
%  (as given in the location.mat)

function [map, y_beacon, y_wifi,id_beacon,id_wifi] = get_reference_map(num_train_points,training_data_location)

% get the map. 28 is the number of AA in the lab.
 map = zeros(num_train_points,28);

for i = 1:num_train_points
    
    % Get the file name
    files = strcat(training_data_location,num2str(i),'.txt');
    % Load the data first
    [~, id_beacon, y_beacon, ~, ~, ~, ~, id_wifi, y_wifi, location] = load_data(files);
    
    % location 
    map(i,1:2) = location;
    
    %% Taking the mean as we dont have the infra to mask the channels.
    
    % for beacons average value of RSS
    for j = 3:max(id_beacon)
        b_ind = id_beacon == j;
        map(i,j) = mean(y_beacon(b_ind));
    end
    
%     % for wifi average value of RSS
%     for k= 16:42
%         w_ind = id_wifi == k;
%         map(i,k) = mean(y_wifi(w_ind));  
%     end
end

% if some MAC is not heard at some location, assign a minimum dB value or
% get the device sensitivity level, -93dBm for BLE beacons.

% Get the indices of the beacons with NaN RSS value.
[i,j]=ind2sub(size(map),find(isnan(map)));

% get only the BLE beacons which are in the columns 3 to 15.
map(i(1:find(j == 15, 1, 'last' )),j(1:find(j == 15, 1, 'last' )))= -93;

% rest which are WiFi beacons are set to -110 (assumed)
map(isnan(map)) = -110;
end

