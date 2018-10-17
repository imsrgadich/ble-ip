[t, id_beacon, y_beacon, ~, ~, ~, ~, ~, ~,~,~,mac_beacon] = load_data('2017.09.08.13.14.22.txt');
[t_1, id_beacon_1, y_beacon_1, ~, ~, ~, ~, ~, ~,~,~,mac_beacon_1] = load_data('2017.10.04.08.45.40.txt');

[t, mac_beacon, y_beacon, ~, ~, ~, ~, ~, ~] = load_data_kontact(files{2});

ids=find(~cellfun(@isempty,strfind(mac_beacon,'8B:3F')));
y_helvar_8b3f_north= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8A:F5')));
y_helvar_8af5_north= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8A:F4')));
y_helvar_8af4_north= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8B:32')));
y_helvar_8b32_north= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8B:44')));
y_helvar_8b44_north= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8C:D1')));
y_helvar_8cd1_north= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8C:A0')));
y_helvar_8ca0_north= y_beacon(ids);

ids=find(~cellfun(@isempty,strfind(mac_beacon,'8B:3F')));
y_helvar_8b3f_wo_user= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8A:F5')));
y_helvar_8af5_wo_user= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8A:F4')));
y_helvar_8af4_wo_user= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8B:32')));
y_helvar_8b32_wo_user= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8B:44')));
y_helvar_8b44_wo_user= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8C:D1')));
y_helvar_8cd1_wo_user= y_beacon(ids);
ids=find(~cellfun(@isempty,strfind(mac_beacon,'8C:A0')));
y_helvar_8ca0_wo_user= y_beacon(ids);


[H, pValue, W] = swtest(y_helvar_8b3f_north)
[H, pValue, W] = swtest(y_helvar_8af5_north)
[H, pValue, W] = swtest(y_helvar_8af4_north)
[H, pValue, W] = swtest(y_helvar_8b32_north)
[H, pValue, W] = swtest(y_helvar_8b44_north)
[H, pValue, W] = swtest(y_helvar_8cd1_north)
[H, pValue, W] = swtest(y_helvar_8ca0_north)

[H, pValue, W] = swtest(y_helvar_8b3f_wo_user)
[H, pValue, W] = swtest(y_helvar_8af5_wo_user)
[H, pValue, W] = swtest(y_helvar_8af4_wo_user)
[H, pValue, W] = swtest(y_helvar_8b32_wo_user)
[H, pValue, W] = swtest(y_helvar_8b44_wo_user)
[H, pValue, W] = swtest(y_helvar_8cd1_wo_user)
[H, pValue, W] = swtest(y_helvar_8ca0_wo_user)

p = signrank(y_helvar_8b3f_north,y_helvar_8b3f_wo_user)
p = signrank(y_helvar_8af5_north,y_helvar_8af5_wo_user)
p = signrank(y_helvar_8af4_north,y_helvar_8af4_wo_user)
p = signrank(y_helvar_8b32_north,y_helvar_8b32_wo_user)
p = signrank(y_helvar_8b44_north,y_helvar_8b44_wo_user)
p = signrank(y_helvar_8cd1_north,y_helvar_8cd1_wo_user)
p = signrank(y_helvar_8ca0_north,y_helvar_8ca0_wo_user)