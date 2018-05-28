function text_files = get_file_location(type)

% GET_DATA  for get the data files
% input arguments: 
%   type: string to select the type of the file.
%                     'comp_radio_analyzer'
%                     'half_power'
%                     'smartphone'
%                     'user_presence'
%                     'orientation'
%                     'luminaires'
%                     'train'
%                     'senserve'
%                     'kontact_kwarkki'
% output arguments:
%   text_file: location of the file.

switch type
    case 'senserve'

        %% Measurement files from SenseServe app
        text_files = {'/home/imsrgadich/Documents/gitrepos/aalto/indoor_position_fingerprint/data/aalto_kwarkki/train/1001_104748.txt';
            '/home/imsrgadich/Documents/gitrepos/aalto/indoor_position_fingerprint/data/aalto_kwarkki/train/1001_104907.txt';
            '../data/train/1001_105101.txt';
            '../data/train/1001_105335.txt';
            '../data/train/1001_105412.txt';
            '../data/train/1001_105511.txt';
            '../data/train/1001_105606.txt';
            '../data/train/1001_105640.txt';
            '../data/train/1001_105752.txt';
            '../data/train/1001_105833.txt';
            '../data/train/1001_105902.txt';
            '../data/train/1001_110012.txt';
            '../data/train/1001_110108.txt';
            '../data/train/1001_110202.txt';
            '../data/train/1001_110232.txt';
            '../data/train/1001_110356.txt';
            '../data/train/1001_110437.txt';
            '../data/train/1001_110659.txt';
            '../data/train/1001_110758.txt';
            '../data/train/1001_110842.txt';
            };
    
    case 'train'
          
        text_files = {
            '../data/helvar_rd/train/2017.09.06.17.41.09.txt';
            '../data/helvar_rd/train/2017.09.06.17.43.01.txt';
            '../data/helvar_rd/train/2017.09.06.17.49.34.txt';
            '../data/helvar_rd/train/2017.09.06.17.56.25.txt';
            '../data/helvar_rd/train/2017.09.06.18.01.31.txt';
            '../data/helvar_rd/train/2017.09.06.18.04.56.txt';
            };
    
    case 'luminaires'
        text_files = {
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/luminaire/2017.09.10.22.52.17.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/luminaire/2017.09.10.23.20.38.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/luminaire/2017.09.10.23.40.06.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/luminaire/2017.09.10.23.57.05.txt';
            };
        
    case 'orientation'

        text_files = {
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/orientation/loc_1/2017.09.10.09.25.51.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/orientation/loc_1/2017.09.10.09.41.52.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/orientation/loc_1/2017.09.10.10.16.39.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/orientation/loc_1/2017.09.10.11.00.44.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/orientation/loc_1/2017.09.10.11.27.01.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/orientation/loc_2/2017.09.09.22.49.22.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/orientation/loc_2/2017.09.09.23.05.59.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/orientation/loc_2/2017.09.09.23.25.26.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/orientation/loc_2/2017.09.10.07.31.20.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/orientation/loc_2/2017.09.10.07.46.41.txt';
            };
        
    case 'user_presence'
        
        text_files = {
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_1/2017.09.08.12.58.33.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_1/2017.09.08.13.14.22.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_1/2017.09.08.13.29.33.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_1/2017.09.08.13.44.49.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_1/2017.09.08.13.58.33.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_1/2017.09.08.14.02.08.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_1/2017.10.04.08.45.40.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_2/2017.09.08.14.36.55.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_2/2017.09.09.17.44.58.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_2/2017.09.09.18.00.16.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_2/2017.09.09.18.16.28.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_2/2017.09.09.18.34.09.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_2/2017.09.09.18.50.28.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/user_presence/loc_2/2017.09.09.20.13.37.txt';
                      };
                  
    case 'smartphone'

        text_files = {
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/smartphone/loc_1/2014.05.23.17.11.18.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/smartphone/loc_1/2017.09.09.20.11.22.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/smartphone/loc_1/2017.09.09.23.24.20.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/smartphone/loc_2/2014.05.24.04.43.02.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/smartphone/loc_2/2017.09.10.10.52.12.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/smartphone/loc_2/2017.09.10.11.49.36.txt';
            };
        
    case 'half_power'

        text_files = {
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/half_power_8b3f/2017.09.29.15.41.29.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/half_power_8b3f/2017.09.29.15.47.06.txt';
                      '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/half_power_8b3f/2017.09.29.15.49.26.txt';
            };
    
    case 'comp_radio_analyzer'
        %% comparison with radio-analyzer.
        text_files = {
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/radio-analyzer/helvar/channel_switching_comparison_phones/s4/2017.10.04.08.10.45.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/radio-analyzer/helvar/channel_switching_comparison_phones/s4mini/2017.10.04.07.38.27.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/radio-analyzer/helvar/channel_switching_comparison_phones/s7/2017.10.04.08.45.40.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/radio-analyzer/kontact_b2_1b/full_power/full_power_B2_1B_outside.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/radio-analyzer/kontact_b2_1b/full_power/full_power_B2_1B_outside.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/data_analysis/radio-analyzer/helvar/channel_switching_dc22_outside/2017.11.13.17.07.35.txt';
            };
    
    case 'kontact_kwarkki'
        text_files = {
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/aalto_kwarkki/2209_092628.txt';
            '/m/cs/work/gadichs1/ip/ble-ip-helvar/data/helvar_rd/data_analysis/radio-analyzer/kontact_b2_1b/full_power/full_power_B2_1B_outside.txt';
        };
    otherwise
        error('Enter correct type')

end