function [test_data,tt,id,y,x_true] = get_test_data(options)
% Also gives out the ground truth.

% test_text_files = {'../data/test/1001_113436.txt';
%               '../data/test/1001_113627.txt';
%               '../data/test/1001_113814.txt';
%               '../data/test/1001_113915.txt';
%               '../data/test/1001_114004.txt';
%               '../data/test/1001_114142.txt';
%               '../data/test/0702_083456.txt';
%               };

test_text_files = {%'/home/imsrgadich/Documents/gitrepos/helvar/ble-ip-helvar/data/helvar_rd/test_data/test_meas_4.txt';
%                    '/home/imsrgadich/Documents/gitrepos/helvar/ble-ip-helvar/data/helvar_rd/test_data/test_meas_5.txt';
%                    '/home/imsrgadich/Documents/gitrepos/helvar/ble-ip-helvar/data/helvar_rd/test_data/test_meas_6.txt';
                   %'/home/imsrgadich/Documents/gitrepos/helvar/ble-ip-helvar/data/helvar_rd/test_data/2017.11.30.10.07.25.txt';
                   '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/test_data/new/2018.01.19.11.02.49.txt'
                   %'/l/gadichs1/gitrepos/helvar/ble-ip-helvar/data/helvar_rd/test_data/new/2018.01.19.11.43.36.txt'
                  };
              
ground_truth_file = {'/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/test_data/new/ground_truth_test_meas_110249.txt'};
          
test_data = {};
tt= {};
id={};
y={};
x_true = {};


% given both the test text file and ground truth file have same size.
for i = 1:size(test_text_files,1)
    [t_beacon, id_beacon, y_beacon,true_loc, ~, ~, ~, ~, ~, ~,~] = ...
                                             load_data(test_text_files{i},'test',ground_truth_file{i});
    
 
    
%     temp_test_data = [];
%     for t=1:2:ceil(max(t_beacon))
%    0     ind = find(t_beacon <t+1 & t > t_beacon-1);
%         temp_id_beacon = id_beacon(ind);
%         temp_y_beacon = y_beacon(ind);
%          % for beacons average value of RSS
%          for j = 1:max(id_beacon)-2
%              b_ind = temp_id_beacon == j+2;
%              if sum(b_ind)==0
%                  temp_test_data(ceil(t/2),j) = options.min_rssi; % minimum sensitivity of device
%              else
%                  temp_test_data(ceil(t/2),j) = mean(temp_y_beacon(b_ind));
%              end
%          end
%     end
    
    tt{i} = t_beacon;
    id{i} = id_beacon';
    y{i} = y_beacon';
    x_true{i} = true_loc;
%     test_data{i} = temp_test_data;  
end

end