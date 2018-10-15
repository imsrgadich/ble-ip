files = get_file_location('kontact_kwarkki');
files_1 = get_file_location('comp_radio_analyzer');

set(0,'DefaultFigureWindowStyle','docked') % docked or normal
figure, hold on, xlim([-110 -50])
title('Smartphone: Helvar loc\_1, 8C:6A luminaire (NLOS)')

[t, id_beacon, y_beacon, ~, ~, ~, ~, ~, ~,~,~,mac_beacon] = load_data(files{2},'test');
[t_1, id_beacon_1, y_beacon_1, ~, ~, ~, ~, ~, ~,~,~,mac_beacon_1] = load_data(files_1{5},'test');

[t, mac_beacon, y_beacon, ~, ~, ~, ~, ~, ~] = load_data_kontact(files{2});

ids=find(~cellfun(@isempty,strfind(mac_beacon,'B2:1B')));
ids_1 = find(~cellfun(@isempty,strfind(mac_beacon_1,'8B:44')));

%or use contains.
y_kontakt_b21b_nex6= y_beacon(ids);
t_8af4_nex5_helvar_time = t(ids);
y_8b44_nexus5= y_beacon_1(ids_1);

histogram(y), hold on


out = datevec(t);
t_new=out(:,5)*60+out(:,6);
t_new_new=t_new(ids);

plot(t_new_new,y,'LineWidth',4)

disp([mean(y);median(y);mode(y);var(y)])

smartphone_helvar_nexus5_loc1_8c6a= y;
save('smartphone_helvar_nexus5_loc1_8c6a.mat','smartphone_helvar_nexus5_loc1_8c6a')

[f,xi] = ksdensity(y,'Bandwidth',0.5);plot(xi,f); 

legend('S4','S4 mini','Nexus 5')

legend( 'hand')
% legend('90 deg','45 deg','0 deg','hand','pocket')
title('Ergorej loc\_2, S4: RSSI pattern')

title('Aalto Kwarkki 3 kerros: RSSI vs distance (not scaled; with median line plot)')

% %%
% map = brewermap(6,'Set1'); 
% figure
% histf(orientation_helvar_90_loc2_8b14,-110:.01:-40,'facecolor',map(1,:),'facealpha',.5,'edgecolor','none')
% hold on
% histf(orientation_helvar_45_loc2_8b14,-110:.01:-40,'facecolor',map(2,:),'facealpha',.5,'edgecolor','none')
% histf(orientation_helvar_0_loc2_8b14,-110:.01:-40,'facecolor',map(3,:),'facealpha',.5,'edgecolor','none')
% histf(orientation_helvar_hand_loc2_8b14,-110:.01:-40,'facecolor',map(4,:),'facealpha',.5,'edgecolor','none')
% histf(orientation_helvar_hand2_loc2_8b14,-110:.01:-40,'facecolor',map(5,:),'facealpha',.5,'edgecolor','none')
% histf(orientation_helvar_pocket_loc2_8b14,-110:.01:-40,'facecolor',map(6,:),'facealpha',.5,'edgecolor','none')
% box off
% axis tight
% legalpha('90 deg','45 deg','0 deg','hand 1','hand 2', 'pocket')
% legend boxoff

disp([mean(orientation_helvar_90_loc2_8b26);
      median(orientation_helvar_90_loc2_8b26);
      var(orientation_helvar_90_loc2_8b26);
      mean(orientation_helvar_45_loc2_8b26);
      median(orientation_helvar_45_loc2_8b26);
      var(orientation_helvar_45_loc2_8b26);
      mean(orientation_helvar_0_loc2_8b26);
      median(orientation_helvar_0_loc2_8b26);
      var(orientation_helvar_0_loc2_8b26);
       mean(orientation_helvar_hand_loc2_8b26);
    median(orientation_helvar_hand_loc2_8b26);
    var(orientation_helvar_hand_loc2_8b26);
    mean(orientation_helvar_hand2_loc2_8b26);
   median(orientation_helvar_hand2_loc2_8b26);
   var(orientation_helvar_hand2_loc2_8b26);
  mean(orientation_helvar_pocket_loc2_8b26);
  median(orientation_helvar_pocket_loc2_8b26);
  var(orientation_helvar_pocket_loc2_8b26)]')

data = fullpowerB21BOUTSIDE; %thnovchannelswitchingdc22Copy(:,:);

index = find([data(:,1)] == '8b3f');
%data_idx = data(:,1) == '8b3f';

%id_data_only_ad = data{:,3}> -41;
data =datatruncated; %(data_idx,:);
data_idx =  find(~cellfun(@isempty,strfind(data(:,1),'8b30')));
%data_only_ad = data(id_data_only_ad,:);

y_8b30_rAnalyzer = cell2mat(data(data_idx,2));

time_mat=datevec(char(data_truncated{:,2}));
time_time=time_mat(:,4)*3600+time_mat(:,5)*60+time_mat(:,6);
time_time = time_time - time_time(1,1);

figure,plot(time_time,data_truncated{:,3}), hold on

% index for 37 channel.
i_37 = data_truncated{:,1}==37;
scatter(time_time(i_37),data_truncated{i_37,3},30,'filled'), hold on

% index for 38 channel.
i_38 = data_truncated{:,1}==38;
scatter(time_time(i_38),data_truncated{i_38,3},30,'filled'), hold on

% index for 39 channel.
i_39 = data_truncated{:,1}==39;
scatter(time_time(i_39),data_truncated{i_39,3},30,'filled'), hold on

legend('radio-analyzer','channel 37','channel 38','channel 39','smartphone')

title('Radio-analyzer vs Smartphone: Outside scenario Kontakt beacon (1 m distance)')
xlabel('Time')
ylabel('RSSI (dBm)')

r_var_rAnalyzer = [repmat(distance_to_luminaire_loc_1(1),size(y_8b3f_rAnalyzer)),y_8b3f_rAnalyzer;
                   repmat(distance_to_luminaire_loc_1(2),size(y_8af5_rAnalyzer)),y_8af5_rAnalyzer;
                   repmat(distance_to_luminaire_loc_1(3),size(y_8af4_rAnalyzer)),y_8af4_rAnalyzer;
                   repmat(distance_to_luminaire_loc_1(4),size(y_8b32_rAnalyzer)),y_8b32_rAnalyzer;
                   repmat(distance_to_luminaire_loc_1(5),size(y_8b44_rAnalyzer)),y_8b44_rAnalyzer;
                   repmat(distance_to_luminaire_loc_1(6),size(y_8cd1_rAnalyzer)),y_8cd1_rAnalyzer;
                   repmat(distance_to_luminaire_loc_1(7),size(y_8ca0_rAnalyzer)),y_8ca0_rAnalyzer;
                   repmat(distance_to_luminaire_loc_1(8),size(y_8b30_rAnalyzer)),y_8b30_rAnalyzer;
                   ];
               
r_var_s4 = [repmat(distance_to_luminaire_loc_1(1),size(y_8b3f_s4')),y_8b3f_s4';
                   repmat(distance_to_luminaire_loc_1(2),size(y_8af5_s4')),y_8af5_s4';
                   repmat(distance_to_luminaire_loc_1(3),size(y_8af4_s4')),y_8af4_s4';
                   repmat(distance_to_luminaire_loc_1(4),size(y_8b32_s4')),y_8b32_s4';
                   repmat(distance_to_luminaire_loc_1(5),size(y_8b44_s4')),y_8b44_s4';
                   repmat(distance_to_luminaire_loc_1(6),size(y_8cd1_s4')),y_8cd1_s4';
                   repmat(distance_to_luminaire_loc_1(7),size(y_8ca0_s4')),y_8ca0_s4';
                   repmat(distance_to_luminaire_loc_1(8),size(y_8b30_s4')),y_8b30_s4';
                   ];
               
r_var_s7 = [repmat(distance_to_luminaire_loc_1(1),size(y_8b3f_s7)),y_8b3f_s7;
                   repmat(distance_to_luminaire_loc_1(2),size(y_8af5_s7)),y_8af5_s7;
                   repmat(distance_to_luminaire_loc_1(3),size(y_8af4_s7)),y_8af4_s7;
                   repmat(distance_to_luminaire_loc_1(4),size(y_8b32_s7)),y_8b32_s7;
                   repmat(distance_to_luminaire_loc_1(5),size(y_8b44_s7)),y_8b44_s7;
                   repmat(distance_to_luminaire_loc_1(6),size(y_8cd1_s7)),y_8cd1_s7;
                   repmat(distance_to_luminaire_loc_1(7),size(y_8ca0_s7)),y_8ca0_s7;
                   repmat(distance_to_luminaire_loc_1(8),size(y_8b30_s7')),y_8b30_s7';
                   ];
               
r_var_s4mini = [repmat(distance_to_luminaire_loc_1(1),size(y_8b3f_s4mini')),y_8b3f_s4mini';
                   repmat(distance_to_luminaire_loc_1(2),size(y_8af5_s4mini')),y_8af5_s4mini';
                   repmat(distance_to_luminaire_loc_1(3),size(y_8af4_s4mini')),y_8af4_s4mini';
                   repmat(distance_to_luminaire_loc_1(4),size(y_8b32_s4mini')),y_8b32_s4mini';
                   repmat(distance_to_luminaire_loc_1(5),size(y_8b44_s4mini')),y_8b44_s4mini';
                   repmat(distance_to_luminaire_loc_1(6),size(y_8cd1_s4mini')),y_8cd1_s4mini';
                   repmat(distance_to_luminaire_loc_1(7),size(y_8ca0_s4mini')),y_8ca0_s4mini';
                   repmat(distance_to_luminaire_loc_1(8),size(y_8b30_s4mini')),y_8b30_s4mini';
                   ];

%% Notes 
% for joyplot radio analyzer took from S7 directory. 
% 




