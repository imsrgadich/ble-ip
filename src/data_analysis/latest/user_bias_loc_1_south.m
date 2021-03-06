[t, id_beacon, y_beacon, ~, ~, ~, ~, ~, ~,~,~,mac_beacon] = load_data('2017.09.08.13.44.49.txt');
[t_1, id_beacon_1, y_beacon_1, ~, ~, ~, ~, ~, ~,~,~,mac_beacon_1] = load_data('2017.10.04.08.45.40.txt');

ids=find(~cellfun(@isempty,strfind(mac_beacon,'8B:3F')));
y_helvar_8b3f_south= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8A:F5')));
y_helvar_8af5_south= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8A:F4')));
y_helvar_8af4_south= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8B:32')));
y_helvar_8b32_south= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8B:44')));
y_helvar_8b44_south= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8C:D1')));
y_helvar_8cd1_south= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8C:A0')));
y_helvar_8ca0_south= y_beacon(ids);

ids=find(~cellfun(@isempty,strfind(mac_beacon_1,'8B:3F')));
y_helvar_8b3f_wo_user= y_beacon_1(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon_1,'8A:F5')));
y_helvar_8af5_wo_user= y_beacon_1(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon_1,'8A:F4')));
y_helvar_8af4_wo_user= y_beacon_1(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon_1,'8B:32')));
y_helvar_8b32_wo_user= y_beacon_1(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon_1,'8B:44')));
y_helvar_8b44_wo_user= y_beacon_1(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon_1,'8C:D1')));
y_helvar_8cd1_wo_user= y_beacon_1(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon_1,'8C:A0')));
y_helvar_8ca0_wo_user= y_beacon_1(ids);


[H, pValue, W] = swtest(y_helvar_8b3f_south)
[H, pValue, W] = swtest(y_helvar_8af5_south)
[H, pValue, W] = swtest(y_helvar_8af4_south)
[H, pValue, W] = swtest(y_helvar_8b32_south)
[H, pValue, W] = swtest(y_helvar_8b44_south)
[H, pValue, W] = swtest(y_helvar_8cd1_south)
[H, pValue, W] = swtest(y_helvar_8ca0_south)

[H, pValue, W] = swtest(y_helvar_8b3f_wo_user)
[H, pValue, W] = swtest(y_helvar_8af5_wo_user)
[H, pValue, W] = swtest(y_helvar_8af4_wo_user)
[H, pValue, W] = swtest(y_helvar_8b32_wo_user)
[H, pValue, W] = swtest(y_helvar_8b44_wo_user)
[H, pValue, W] = swtest(y_helvar_8cd1_wo_user)
[H, pValue, W] = swtest(y_helvar_8ca0_wo_user)

p = signrank(y_helvar_8b3f_south,y_helvar_8b3f_wo_user)
p = signrank(y_helvar_8af5_south,y_helvar_8af5_wo_user)
p = signrank(y_helvar_8af4_south,y_helvar_8af4_wo_user)
p = signrank(y_helvar_8b32_south,y_helvar_8b32_wo_user)
p = signrank(y_helvar_8b44_south,y_helvar_8b44_wo_user)
p = signrank(y_helvar_8cd1_south,y_helvar_8cd1_wo_user)
p = signrank(y_helvar_8ca0_south,y_helvar_8ca0_wo_user)