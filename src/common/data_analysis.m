files = get_training_data();

set(0,'DefaultFigureWindowStyle','docked') % docked or normal
figure, hold on, xlim([-110 -50])
title('Smartphone: Helvar loc\_1, 8C:6A luminaire (NLOS)')

[t,mac_beacon,y_beacon, ~, ~, ~, ~, ~, ~]= load_data(files{3});
ids = contains(mac_beacon,'8C:6A');

y = y_beacon(ids);

disp([mean(y);median(y);mode(y);var(y)])

smartphone_helvar_nexus5_loc1_8c6a= y;
save('smartphone_helvar_nexus5_loc1_8c6a.mat','smartphone_helvar_nexus5_loc1_8c6a')

[f,xi] = ksdensity(y,'Bandwidth',0.5);plot(xi,f); 

legend('S4','S4 mini','Nexus 5')


legend( 'hand')
% legend('90 deg','45 deg','0 deg','hand','pocket')
title('Smartphone: Helvar loc\_1, 8C:57 luminaire (NLOS)')





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
