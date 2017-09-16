files = get_training_data();

set(0,'DefaultFigureWindowStyle','docked') % docked or normal
figure, hold on, xlim([-110 -50])

[t, mac_beacon, y_beacon, ~, ~, ~, ~, id_wifi, y_wifi]= load_data(files{1});
ids = contains(mac_beacon,'8C:D1');
y = y_beacon(ids);

orientation_helvar_90_loc2_8cd1 = y;
save('orientation_helvar_90_loc2_8cd1.mat','orientation_helvar_90_loc2_8cd1')

%histogram(y), 

[f,xi] = ksdensity(y,'Bandwidth',0.5);
plot(xi,f);

legend('90 deg','45 deg','0 deg','hand 1','hand 2', 'pocket')
title('Effect of Orientation: loc\_2, 8C:A0 luminaire')

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
