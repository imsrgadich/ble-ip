%% radio analyzer - smartphone bias
[t, id_beacon, y_beacon, ~, ~, ~, ~, ~, ~,~,~,mac_beacon] = load_data('2017.10.04.08.45.40.txt');
[t_1, id_beacon_1, y_beacon_1, ~, ~, ~, ~, ~, ~,~,~,mac_beacon_1] = load_data(files_1{5},'test');

[t, mac_beacon, y_beacon, ~, ~, ~, ~, ~, ~] = load_data_kontact(files{2});

ids=find(~cellfun(@isempty,strfind(mac_beacon,'8B:3F')));
y_helvar_8b3f_s7= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8A:F5')));
y_helvar_8af5_s7= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8A:F4')));
y_helvar_8af4_s7= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8B:32')));
y_helvar_8b32_s7= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8B:44')));
y_helvar_8b44_s7= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8C:D1')));
y_helvar_8cd1_s7= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8C:A0')));
y_helvar_8ca0_s7= y_beacon(ids);


y_helvar_8b3f_ra= d(d.Address=='8b3f','RSSI');
y_helvar_8af5_ra= d(d.Address=='8af5','RSSI');
y_helvar_8af4_ra= d(d.Address=='8af4','RSSI');
y_helvar_8b32_ra= d(d.Address=='8b32','RSSI');
y_helvar_8b44_ra= d(d.Address=='8b44','RSSI');
y_helvar_8cd1_ra= d(d.Address=='8cd1','RSSI');
y_helvar_8ca0_ra= d(d.Address=='8ca0','RSSI');


ids_1 = find(~cellfun(@isempty,strfind(mac_beacon_1,'8B:44')));

%or use contains.
y_helvar_8b44_s4= y_beacon(ids);
t_8af4_nex5_helvar_time = t(ids);
y_8b44_nexus5= y_beacon_1(ids_1);



[H, pValue, W] = swtest(y_helvar_8b3f_s7)
[H, pValue, W] = swtest(y_helvar_8af5_s7)
[H, pValue, W] = swtest(y_helvar_8af4_s7)
[H, pValue, W] = swtest(y_helvar_8b32_s7)
[H, pValue, W] = swtest(y_helvar_8b44_s7)
[H, pValue, W] = swtest(y_helvar_8cd1_s7)
[H, pValue, W] = swtest(y_helvar_8ca0_s7)

[H, pValue, W] = swtest(y_helvar_8b3f_ra.RSSI)
[H, pValue, W] = swtest(y_helvar_8af5_ra.RSSI)
[H, pValue, W] = swtest(y_helvar_8af4_ra.RSSI)
[H, pValue, W] = swtest(y_helvar_8b32_ra.RSSI)
[H, pValue, W] = swtest(y_helvar_8b44_ra.RSSI)
[H, pValue, W] = swtest(y_helvar_8cd1_ra.RSSI)
[H, pValue, W] = swtest(y_helvar_8ca0_ra.RSSI)

p = signrank(y_helvar_8b3f_s7,y_helvar_8b3f_ra.RSSI)
p = signrank(y_helvar_8af5_s7,y_helvar_8af5_ra.RSSI)
p = signrank(y_helvar_8af4_s7,y_helvar_8af4_ra.RSSI)
p = signrank(y_helvar_8b32_s7,y_helvar_8b32_ra.RSSI)
p = signrank(y_helvar_8b44_s7,y_helvar_8b44_ra.RSSI)
p = signrank(y_helvar_8cd1_s7,y_helvar_8cd1_ra.RSSI)
p = signrank(y_helvar_8ca0_s7,y_helvar_8ca0_ra.RSSI)

%% User bias

% north
