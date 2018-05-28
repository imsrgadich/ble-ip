% /m/cs/work/gadichs1/ip/ble-ip-helvar/mat_files/channel_switching/*

% Kontact beacons

figure
subplot(5,3,1),hold on
plot(t_b21b_kontact_time(1:400),y_b21b_kontact_time(1:400),'LineWidth',2), hold on
ylabel('RSSI')
title('Kontact B21B beacon: Nexus 6')

subplot(5,3,4),hold on
plot(t_9012_kontact_time(1:400),y_9012_kontact_time(1:400),'LineWidth',2), hold on
ylabel('RSSI')
title('Kontact 9012 beacon: Nexus 6')

subplot(5,3,7),hold on
plot(t_49e2_kontact_time(1:400),y_49e2_kontact_time(1:400),'LineWidth',2), hold on
ylabel('RSSI')
title('Kontact 49E2 beacon: Nexus 6')

subplot(5,3,10), hold on
plot(t_8b04_kontact_time(1:400),y_8b04_kontact_time(1:400),'LineWidth',2), hold on
ylabel('RSSI')
title('Kontact 8B04 beacon: Nexus 6')

subplot(5,3,13),hold on
plot(t_58c5_kontact_time(1:400),y_58c5_kontact_time(1:400),'LineWidth',2), hold on
ylabel('RSSI')
xlabel('time')
title('Kontact 58C5 beacon: Nexus 6')


% helvar s4
subplot(5,3,2),hold on
plot(t_8b3f_helvar_time(1:200),y_8b3f_s4_helvar_time(1:200),'LineWidth',2), hold on
ylabel('RSSI')
title('Helvar 8B3F beacon: S4')

subplot(5,3,5),hold on
plot(t_8af5_helvar_time(1:200),y_8af5_s4_helvar_time(1:200),'LineWidth',2), hold on
ylabel('RSSI')
title('Helvar 8AF5 beacon: S4')

subplot(5,3,8),hold on
plot(t_8af4_helvar_time(1:200),y_8af4_s4_helvar_time(1:200),'LineWidth',2), hold on
ylabel('RSSI')
title('Helvar 8AF4 beacon: S4')

subplot(5,3,11), hold on
plot(t_8b32_helvar_time(1:200),y_8b32_s4_helvar_time(1:200),'LineWidth',2), hold on
ylabel('RSSI')
title('Helvar 8B32 beacon: S4')

subplot(5,3,14),hold on
plot(t_8b44_helvar_time(1:200),y_8b44_s4_helvar_time(1:200),'LineWidth',2), hold on
ylabel('RSSI')
xlabel('time')
title('Helvar 8B44 beacon: S4')

% helvar beacons s4mini
subplot(5,3,3),hold on
plot(t_8b3f_s4mini_helvar_time(1:200),y_8b3f_s4mini_helvar_time(1:200),'LineWidth',2), hold on
ylabel('RSSI')
title('Helvar 8B3F beacon: S4 mini')

subplot(5,3,6),hold on
plot(t_8af5_s4mini_helvar_time(1:200),y_8af5_s4mini_helvar_time(1:200),'LineWidth',2), hold on
ylabel('RSSI')
title('Helvar 8AF5 beacon: S4 mini')

subplot(5,3,9),hold on
plot(t_8af4_s4mini_helvar_time(1:200),y_8af4_s4mini_helvar_time(1:200),'LineWidth',2), hold on
ylabel('RSSI')
title('Helvar 8AF4 beacon: S4 mini')

subplot(5,3,12), hold on
plot(t_8b32_s4mini_helvar_time,y_8b32_s4mini_helvar_time,'LineWidth',2), hold on
ylabel('RSSI')
title('Helvar 8B32 beacon: S4 mini')

subplot(5,3,15),hold on
plot(t_8b44_s4mini_helvar_time,y_8b44_s4mini_helvar_time,'LineWidth',2), hold on
ylabel('RSSI')
xlabel('time')
title('Helvar 8B44 beacon: S4 mini')


% % helvar beacons nexus 5
% subplot(5,3,4),hold on
% plot(t_8b3f_nex5_helvar_time,y_8b3f_nex5_helvar_time,'LineWidth',2), hold on
% ylabel('RSSI')
% title('Helvar 8B3F beacon: Nexus 5')
% 
% subplot(5,3,8),hold on
% plot(t_8af5_nex5_helvar_time(1:200),y_8af5_nex5_helvar_time(1:200),'LineWidth',2), hold on
% ylabel('RSSI')
% title('Helvar 8AF5 beacon: Nexus 5')
% 
% subplot(5,3,12),hold on
% plot(t_8af4_nex5_helvar_time,y_8af4_nex5_helvar_time,'LineWidth',2), hold on
% ylabel('RSSI')
% title('Helvar 8AF4 beacon: Nexus 5')
% 
% subplot(5,3,16), hold on
% plot(t_8b32_nex5_helvar_time,y_8b32_nex5_helvar_time,'LineWidth',2), hold on
% ylabel('RSSI')
% title('Helvar 8B32 beacon: Nexus 5')
% 
% subplot(5,3,20),hold on
% plot(t_8b44_nex5_helvar_time,y_8b44_nex5_helvar_time,'LineWidth',2), hold on
% ylabel('RSSI')
% xlabel('time')
% title('Helvar 8B44 beacon: Nexus 5')


