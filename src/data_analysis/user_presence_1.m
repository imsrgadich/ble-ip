%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% experiment one.. only odd subplots.

%% column 1 north
subplot(7,6,1), hold on
xlim([-100 -60])
cdfplot(y_8b3f_wu), hold on
cdfplot(y_8b3f_north)
title('8B3F: w/o user vs north')
xlabel('')

subplot(7,6,7), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af5_wu), hold on
cdfplot(y_8af5_north)
title('8AF5: w/o user vs north')
xlabel('')

subplot(7,6,13), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af4_wu), hold on
cdfplot(y_8af4_north)
title('8AF4: w/o user vs north')
xlabel('')

subplot(7,6,19), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b32_wu), hold on
cdfplot(y_8b32_north)
title('8B32: w/o user vs north')
xlabel('')

subplot(7,6,25), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_north)
title('8B44: w/o user vs north')
xlabel('')

subplot(7,6,31), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8cd1_wu), hold on
cdfplot(y_8cd1_north)
title('8CD1: w/o user vs north')
xlabel('')

subplot(7,6,37), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_north)
title('8CA0: w/o user vs north')
xlabel('RSSI')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% column 2: east

subplot(7,6,2), hold on
xlim([-100 -60])
cdfplot(y_8b3f_wu), hold on
cdfplot(y_8b3f_east)
title('8B3F: w/o user vs east')
xlabel('')

subplot(7,6,8), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af5_wu), hold on
cdfplot(y_8af5_east)
title('8AF5: w/o user vs east')
xlabel('')

subplot(7,6,14), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af4_wu), hold on
cdfplot(y_8af4_east)
title('8AF4: w/o user vs east')
xlabel('')

subplot(7,6,20), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b32_wu), hold on
cdfplot(y_8b32_east)
title('8B32: w/o user vs east')
xlabel('')

subplot(7,6,26), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_east)
title('8B44: w/o user vs east')
xlabel('')

subplot(7,6,32), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8cd1_wu), hold on
cdfplot(y_8cd1_east)
title('8CD1: w/o user vs east')
xlabel('')

subplot(7,6,38), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_east)
title('8CA0: w/o user vs east')
xlabel('RSSI')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% column 3: south


subplot(7,6,3), hold on
xlim([-100 -60])
cdfplot(y_8b3f_wu), hold on
cdfplot(y_8b3f_south)
title('8B3F: w/o user vs south')
xlabel('')

subplot(7,6,9), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af5_wu), hold on
cdfplot(y_8af5_south)
title('8AF5: w/o user vs south')
xlabel('')

subplot(7,6,15), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af4_wu), hold on
cdfplot(y_8af4_south)
title('8AF4: w/o user vs south')
xlabel('')

subplot(7,6,21), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b32_wu), hold on
cdfplot(y_8b32_south)
title('8B32: w/o user vs south')
xlabel('')

subplot(7,6,27), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_south)
title('8B44: w/o user vs south')
xlabel('')

subplot(7,6,33), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8cd1_wu), hold on
cdfplot(y_8cd1_south)
title('8CD1: w/o user vs south')
xlabel('')

subplot(7,6,39), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_south)
title('8CA0: w/o user vs south')
xlabel('RSSI')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% column 4: west


subplot(7,6,4), hold on
xlim([-100 -60])
cdfplot(y_8b3f_wu), hold on
cdfplot(y_8b3f_west)
title('8B3F: w/o user vs west')
xlabel('')

subplot(7,6,10), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af5_wu), hold on
cdfplot(y_8af5_west)
title('8AF5: w/o user vs west')
xlabel('')

subplot(7,6,16), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af4_wu), hold on
cdfplot(y_8af4_west)
title('8AF4: w/o user vs west')
xlabel('')

subplot(7,6,22), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b32_wu), hold on
cdfplot(y_8b32_west)
title('8B32: w/o user vs west')
xlabel('')

subplot(7,6,28), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_west)
title('8B44: w/o user vs west')
xlabel('')

subplot(7,6,34), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8cd1_wu), hold on
cdfplot(y_8cd1_west)
title('8CD1: w/o user vs west')
xlabel('')

subplot(7,6,40), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_west)
title('8CA0: w/o user vs west')
xlabel('RSSI')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% column 5: shadow


subplot(7,6,5), hold on
xlim([-100 -60])
cdfplot(y_8b3f_wu), hold on
cdfplot(y_8b3f_shadow)
title('8B3F: w/o user vs shadow')
xlabel('')

subplot(7,6,11), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af5_wu), hold on
cdfplot(y_8af5_shadow)
title('8AF5: w/o user vs shadow')
xlabel('')

subplot(7,6,17), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af4_wu), hold on
cdfplot(y_8af4_shadow)
title('8AF4: w/o user vs shadow')
xlabel('')

subplot(7,6,23), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b32_wu), hold on
cdfplot(y_8b32_shadow)
title('8B32: w/o user vs shadow')
xlabel('')

subplot(7,6,29), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_shadow)
title('8B44: w/o user vs shadow')
xlabel('')

subplot(7,6,35), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8cd1_wu), hold on
cdfplot(y_8cd1_shadow)
title('8CD1: w/o user vs shadow')
xlabel('')

subplot(7,6,41), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_shadow)
title('8CA0: w/o user vs shadow')
xlabel('RSSI')


%% column 6: rotating


subplot(7,6,5), hold on
xlim([-100 -60])
cdfplot(y_8b3f_wu), hold on
cdfplot(y_8b3f_shadow)
title('8B3F: w/o user vs shadow')
xlabel('')

subplot(7,6,11), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af5_wu), hold on
cdfplot(y_8af5_shadow)
title('8AF5: w/o user vs shadow')
xlabel('')

subplot(7,6,17), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af4_wu), hold on
cdfplot(y_8af4_shadow)
title('8AF4: w/o user vs shadow')
xlabel('')

subplot(7,6,23), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b32_wu), hold on
cdfplot(y_8b32_shadow)
title('8B32: w/o user vs shadow')
xlabel('')

subplot(7,6,29), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_shadow)
title('8B44: w/o user vs shadow')
xlabel('')

subplot(7,6,35), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8cd1_wu), hold on
cdfplot(y_8cd1_shadow)
title('8CD1: w/o user vs shadow')
xlabel('')

subplot(7,6,41), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_shadow)
title('8CA0: w/o user vs shadow')
xlabel('RSSI')


%% column 5: shadow


subplot(7,6,5), hold on
xlim([-100 -60])
cdfplot(y_8b1d_wu), hold on
cdfplot(y_8b1d_shadow)
title('8B1D: w/o user vs shadow')
xlabel('')

subplot(7,6,11), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b11_wu), hold on
cdfplot(y_8b11_shadow)
title('8B11: w/o user vs shadow')
xlabel('')

subplot(7,6,17), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8caa_wu), hold on
cdfplot(y_8caa_shadow)
title('8CAA: w/o user vs shadow')
xlabel('')

subplot(7,6,23), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8c6a_wu), hold on
cdfplot(y_8c6a_shadow)
title('8C6A: w/o user vs shadow')
xlabel('')

subplot(7,6,29), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8c39_wu), hold on
cdfplot(y_8c39_shadow)
title('8C39: w/o user vs shadow')
xlabel('')

subplot(7,6,35), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8c4a_wu), hold on
cdfplot(y_8c4a_shadow)
title('8C4A: w/o user vs shadow')
xlabel('')

subplot(7,6,41), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8c6d_wu), hold on
cdfplot(y_8c6d_shadow)
title('8C6D: w/o user vs shadow')
xlabel('RSSI')


%% column 6: rotating

subplot(7,6,6), hold on
xlim([-100 -60])
cdfplot(y_8b3f_wu), hold on
cdfplot(y_8b3f_rotate)
title('8B3F: w/o user vs rotate')
xlabel('')

subplot(7,6,12), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af5_wu), hold on
cdfplot(y_8af5_rotate)
title('8AF5: w/o user vs rotate')
xlabel('')

subplot(7,6,18), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8af4_wu), hold on
cdfplot(y_8af4_rotate)
title('8AF4: w/o user vs rotate')
xlabel('')

subplot(7,6,24), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b32_wu), hold on
cdfplot(y_8b32_rotate)
title('8B32: w/o user vs rotate')
xlabel('')

subplot(7,6,30), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_rotate)
title('8B44: w/o user vs rotate')
xlabel('')

subplot(7,6,36), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8cd1_wu), hold on
cdfplot(y_8cd1_rotate)
title('8CD1: w/o user vs rotate')
xlabel('')

subplot(7,6,42), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_rotate)
title('8CA0: w/o user vs shadow')
xlabel('RSSI')

legend('w/o user','user.','Orientation','horizontal')


matlab2tikz()
%% statistical tests. 

%% column 1

[mean(y_8b3f_wu),
mean(y_8af5_wu),
mean(y_8af4_wu),
mean(y_8b32_wu),
mean(y_8b44_wu),
mean(y_8cd1_wu),
mean(y_8ca0_wu)]
-
[mean(y_8b3f_north);
mean(y_8af5_north);
mean(y_8af4_north);
mean(y_8b32_north);
mean(y_8b44_north);
mean(y_8cd1_north);
mean(y_8ca0_north)]

% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_wu, y_8b3f_north)
[h,p,test_stat]=kstest2(y_8af5_wu, y_8af5_north)
[h,p,test_stat]=kstest2(y_8af4_wu, y_8af4_north)
[h,p,test_stat]=kstest2(y_8b32_wu, y_8b32_north)
[h,p,test_stat]=kstest2(y_8b44_wu, y_8b44_north)
[h,p,test_stat]=kstest2(y_8cd1_wu, y_8cd1_north)
[h,p,test_stat]=kstest2(y_8ca0_wu, y_8ca0_north)


% z test
[zval,p,H]=ztest2(y_8b3f_wu, y_8b3f_north)
[zval,p,H]=ztest2(y_8af5_wu, y_8af5_north)
[zval,p,H]=ztest2(y_8af4_wu, y_8af4_north)
[zval,p,H]=ztest2(y_8b32_wu, y_8b32_north)
[zval,p,H]=ztest2(y_8b44_wu, y_8b44_north)
[zval,p,H]=ztest2(y_8cd1_wu, y_8cd1_north)
[zval,p,H]=ztest2(y_8ca0_wu, y_8ca0_north)


% levene test for variance
p = vartestn([y_8b3f_wu';y_8b3f_north'],[ones(size(y_8b3f_wu'));1+ones(size(y_8b3f_north'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_wu';y_8af5_north'],[ones(size(y_8af5_wu'));1+ones(size(y_8af5_north'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_wu';y_8af4_north'],[ones(size(y_8af4_wu'));1+ones(size(y_8af4_north'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_wu';y_8b32_north'],[ones(size(y_8b32_wu'));1+ones(size(y_8b32_north'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_wu';y_8b44_north'],[ones(size(y_8b44_wu'));1+ones(size(y_8b44_north'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_wu';y_8cd1_north'],[ones(size(y_8cd1_wu'));1+ones(size(y_8cd1_north'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_wu';y_8ca0_north'],[ones(size(y_8ca0_wu'));1+ones(size(y_8ca0_north'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8b3f_wu, y_8b3f_north)
p=ranksum(y_8af5_wu, y_8af5_north)
p=ranksum(y_8af4_wu, y_8af4_north)
p=ranksum(y_8b32_wu, y_8b32_north)
p=ranksum(y_8b44_wu, y_8b44_north)
p=ranksum(y_8cd1_wu, y_8cd1_north)
p=ranksum(y_8ca0_wu, y_8ca0_north)



%% column 2.

[mean(y_8b3f_wu),
mean(y_8af5_wu),
mean(y_8af4_wu),
mean(y_8b32_wu),
mean(y_8b44_wu),
mean(y_8cd1_wu),
mean(y_8ca0_wu)]
-
[mean(y_8b3f_east);
mean(y_8af5_east);
mean(y_8af4_east);
mean(y_8b32_east);
mean(y_8b44_east);
mean(y_8cd1_east);
mean(y_8ca0_east)]

% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_wu, y_8b3f_east)
[h,p,test_stat]=kstest2(y_8af5_wu, y_8af5_east)
[h,p,test_stat]=kstest2(y_8af4_wu, y_8af4_east)
[h,p,test_stat]=kstest2(y_8b32_wu, y_8b32_east)
[h,p,test_stat]=kstest2(y_8b44_wu, y_8b44_east)
[h,p,test_stat]=kstest2(y_8cd1_wu, y_8cd1_east)
[h,p,test_stat]=kstest2(y_8ca0_wu, y_8ca0_east)


% z test
[zval,p,H]=ztest2(y_8b3f_wu, y_8b3f_east)
[zval,p,H]=ztest2(y_8af5_wu, y_8af5_east)
[zval,p,H]=ztest2(y_8af4_wu, y_8af4_east)
[zval,p,H]=ztest2(y_8b32_wu, y_8b32_east)
[zval,p,H]=ztest2(y_8b44_wu, y_8b44_east)
[zval,p,H]=ztest2(y_8cd1_wu, y_8cd1_east)
[zval,p,H]=ztest2(y_8ca0_wu, y_8ca0_east)


% levene test for variance
p = vartestn([y_8b3f_wu';y_8b3f_east'],[ones(size(y_8b3f_wu'));1+ones(size(y_8b3f_east'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_wu';y_8af5_east'],[ones(size(y_8af5_wu'));1+ones(size(y_8af5_east'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_wu';y_8af4_east'],[ones(size(y_8af4_wu'));1+ones(size(y_8af4_east'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_wu';y_8b32_east'],[ones(size(y_8b32_wu'));1+ones(size(y_8b32_east'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_wu';y_8b44_east'],[ones(size(y_8b44_wu'));1+ones(size(y_8b44_east'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_wu';y_8cd1_east'],[ones(size(y_8cd1_wu'));1+ones(size(y_8cd1_east'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_wu';y_8ca0_east'],[ones(size(y_8ca0_wu'));1+ones(size(y_8ca0_east'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8b3f_wu, y_8b3f_east)
p=ranksum(y_8af5_wu, y_8af5_east)
p=ranksum(y_8af4_wu, y_8af4_east)
p=ranksum(y_8b32_wu, y_8b32_east)
p=ranksum(y_8b44_wu, y_8b44_east)
p=ranksum(y_8cd1_wu, y_8cd1_east)
p=ranksum(y_8ca0_wu, y_8ca0_east)


%% column 3.

[mean(y_8b3f_wu),
mean(y_8af5_wu),
mean(y_8af4_wu),
mean(y_8b32_wu),
mean(y_8b44_wu),
mean(y_8cd1_wu),
mean(y_8ca0_wu)]
-
[mean(y_8b3f_south);
mean(y_8af5_south);
mean(y_8af4_south);
mean(y_8b32_south);
mean(y_8b44_south);
mean(y_8cd1_south);
mean(y_8ca0_south)]

% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_wu, y_8b3f_south)
[h,p,test_stat]=kstest2(y_8af5_wu, y_8af5_south)
[h,p,test_stat]=kstest2(y_8af4_wu, y_8af4_south)
[h,p,test_stat]=kstest2(y_8b32_wu, y_8b32_south)
[h,p,test_stat]=kstest2(y_8b44_wu, y_8b44_south)
[h,p,test_stat]=kstest2(y_8cd1_wu, y_8cd1_south)
[h,p,test_stat]=kstest2(y_8ca0_wu, y_8ca0_south)


% z test
[zval,p,H]=ztest2(y_8b3f_wu, y_8b3f_south)
[zval,p,H]=ztest2(y_8af5_wu, y_8af5_south)
[zval,p,H]=ztest2(y_8af4_wu, y_8af4_south)
[zval,p,H]=ztest2(y_8b32_wu, y_8b32_south)
[zval,p,H]=ztest2(y_8b44_wu, y_8b44_south)
[zval,p,H]=ztest2(y_8cd1_wu, y_8cd1_south)
[zval,p,H]=ztest2(y_8ca0_wu, y_8ca0_south)


% levene test for variance
p = vartestn([y_8b3f_wu';y_8b3f_south'],[ones(size(y_8b3f_wu'));1+ones(size(y_8b3f_south'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_wu';y_8af5_south'],[ones(size(y_8af5_wu'));1+ones(size(y_8af5_south'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_wu';y_8af4_south'],[ones(size(y_8af4_wu'));1+ones(size(y_8af4_south'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_wu';y_8b32_south'],[ones(size(y_8b32_wu'));1+ones(size(y_8b32_south'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_wu';y_8b44_south'],[ones(size(y_8b44_wu'));1+ones(size(y_8b44_south'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_wu';y_8cd1_south'],[ones(size(y_8cd1_wu'));1+ones(size(y_8cd1_south'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_wu';y_8ca0_south'],[ones(size(y_8ca0_wu'));1+ones(size(y_8ca0_south'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8b3f_wu, y_8b3f_south)
p=ranksum(y_8af5_wu, y_8af5_south)
p=ranksum(y_8af4_wu, y_8af4_south)
p=ranksum(y_8b32_wu, y_8b32_south)
p=ranksum(y_8b44_wu, y_8b44_south)
p=ranksum(y_8cd1_wu, y_8cd1_south)
p=ranksum(y_8ca0_wu, y_8ca0_south)


%% %% column 4.

[mean(y_8b3f_wu),
mean(y_8af5_wu),
mean(y_8af4_wu),
mean(y_8b32_wu),
mean(y_8b44_wu),
mean(y_8cd1_wu),
mean(y_8ca0_wu)]
-
[mean(y_8b3f_west);
mean(y_8af5_west);
mean(y_8af4_west);
mean(y_8b32_west);
mean(y_8b44_west);
mean(y_8cd1_west);
mean(y_8ca0_west)]

% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_wu, y_8b3f_west)
[h,p,test_stat]=kstest2(y_8af5_wu, y_8af5_west)
[h,p,test_stat]=kstest2(y_8af4_wu, y_8af4_west)
[h,p,test_stat]=kstest2(y_8b32_wu, y_8b32_west)
[h,p,test_stat]=kstest2(y_8b44_wu, y_8b44_west)
[h,p,test_stat]=kstest2(y_8cd1_wu, y_8cd1_west)
[h,p,test_stat]=kstest2(y_8ca0_wu, y_8ca0_west)


% z test
[zval,p,H]=ztest2(y_8b3f_wu, y_8b3f_west)
[zval,p,H]=ztest2(y_8af5_wu, y_8af5_west)
[zval,p,H]=ztest2(y_8af4_wu, y_8af4_west)
[zval,p,H]=ztest2(y_8b32_wu, y_8b32_west)
[zval,p,H]=ztest2(y_8b44_wu, y_8b44_west)
[zval,p,H]=ztest2(y_8cd1_wu, y_8cd1_west)
[zval,p,H]=ztest2(y_8ca0_wu, y_8ca0_west)


% levene test for variance
p = vartestn([y_8b3f_wu';y_8b3f_west'],[ones(size(y_8b3f_wu'));1+ones(size(y_8b3f_west'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_wu';y_8af5_west'],[ones(size(y_8af5_wu'));1+ones(size(y_8af5_west'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_wu';y_8af4_west'],[ones(size(y_8af4_wu'));1+ones(size(y_8af4_west'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_wu';y_8b32_west'],[ones(size(y_8b32_wu'));1+ones(size(y_8b32_west'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_wu';y_8b44_west'],[ones(size(y_8b44_wu'));1+ones(size(y_8b44_west'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_wu';y_8cd1_west'],[ones(size(y_8cd1_wu'));1+ones(size(y_8cd1_west'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_wu';y_8ca0_west'],[ones(size(y_8ca0_wu'));1+ones(size(y_8ca0_west'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8b3f_wu, y_8b3f_west)
p=ranksum(y_8af5_wu, y_8af5_west)
p=ranksum(y_8af4_wu, y_8af4_west)
p=ranksum(y_8b32_wu, y_8b32_west)
p=ranksum(y_8b44_wu, y_8b44_west)
p=ranksum(y_8cd1_wu, y_8cd1_west)
p=ranksum(y_8ca0_wu, y_8ca0_west)


%% column 5.

[mean(y_8b1d_shadow_wu),
mean(y_8b11_shadow_wu),
mean(y_8caa_shadow_wu),
mean(y_8c6a_shadow_wu),
mean(y_8c39_shadow_wu),
mean(y_8c4a_shadow_wu),
mean(y_8c6d_shadow_wu)]
-
[mean(y_8b1d_shadow);
mean(y_8b11_shadow);
mean(y_8caa_shadow);
mean(y_8c6a_shadow);
mean(y_8c39_shadow);
mean(y_8c4a_shadow);
mean(y_8c6d_shadow)]


% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b1d_shadow_wu, y_8b1d_shadow)
[h,p,test_stat]=kstest2(y_8b11_shadow_wu, y_8b11_shadow)
[h,p,test_stat]=kstest2(y_8caa_shadow_wu, y_8caa_shadow)
[h,p,test_stat]=kstest2(y_8c6a_shadow_wu, y_8c6a_shadow)
[h,p,test_stat]=kstest2(y_8c39_shadow_wu, y_8c39_shadow)
[h,p,test_stat]=kstest2(y_8c4a_shadow_wu, y_8c4a_shadow)
[h,p,test_stat]=kstest2(y_8c6d_shadow_wu, y_8c6d_shadow)


% z test

% same underlying population distribution.
[zval,p,H]=ztest2(y_8b1d_shadow_wu, y_8b1d_shadow)
[zval,p,H]=ztest2(y_8b11_shadow_wu, y_8b11_shadow)
[zval,p,H]=ztest2(y_8caa_shadow_wu, y_8caa_shadow)
[zval,p,H]=ztest2(y_8c6a_shadow_wu, y_8c6a_shadow)
[zval,p,H]=ztest2(y_8c39_shadow_wu, y_8c39_shadow)
[zval,p,H]=ztest2(y_8c4a_shadow_wu, y_8c4a_shadow)
[zval,p,H]=ztest2(y_8c6d_shadow_wu, y_8c6d_shadow)



% levene test for variance
p = vartestn([y_8b1d_shadow_wu';y_8b1d_shadow'],[ones(size(y_8b1d_shadow_wu'));1+ones(size(y_8b1d_shadow'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b11_shadow_wu';y_8b11_shadow'],[ones(size(y_8b11_shadow_wu'));1+ones(size(y_8b11_shadow'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8caa_shadow_wu';y_8caa_shadow'],[ones(size(y_8caa_shadow_wu'));1+ones(size(y_8caa_shadow'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8c6a_shadow_wu';y_8c6a_shadow'],[ones(size(y_8c6a_shadow_wu'));1+ones(size(y_8c6a_shadow'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8c39_shadow_wu';y_8c39_shadow'],[ones(size(y_8c39_shadow_wu'));1+ones(size(y_8c39_shadow'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8c4a_shadow_wu';y_8c4a_shadow'],[ones(size(y_8c4a_shadow_wu'));1+ones(size(y_8c4a_shadow'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8c6d_shadow_wu';y_8c6d_shadow'],[ones(size(y_8c6d_shadow_wu'));1+ones(size(y_8c6d_shadow'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% same underlying population distribution.
p=ranksum(y_8b1d_shadow_wu, y_8b1d_shadow)
p=ranksum(y_8b11_shadow_wu, y_8b11_shadow)
p=ranksum(y_8caa_shadow_wu, y_8caa_shadow)
p=ranksum(y_8c6a_shadow_wu, y_8c6a_shadow)
p=ranksum(y_8c39_shadow_wu, y_8c39_shadow)
p=ranksum(y_8c4a_shadow_wu, y_8c4a_shadow)
p=ranksum(y_8c6d_shadow_wu, y_8c6d_shadow)



%% column 6.

[mean(y_8b3f_wu),
mean(y_8af5_wu),
mean(y_8af4_wu),
mean(y_8b32_wu),
mean(y_8b44_wu),
mean(y_8cd1_wu),
mean(y_8ca0_wu)]
-
[mean(y_8b3f_rotate);
mean(y_8af5_rotate);
mean(y_8af4_rotate);
mean(y_8b32_rotate);
mean(y_8b44_rotate);
mean(y_8cd1_rotate);
mean(y_8ca0_rotate)]

% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_wu, y_8b3f_rotate)
[h,p,test_stat]=kstest2(y_8af5_wu, y_8af5_rotate)
[h,p,test_stat]=kstest2(y_8af4_wu, y_8af4_rotate)
[h,p,test_stat]=kstest2(y_8b32_wu, y_8b32_rotate)
[h,p,test_stat]=kstest2(y_8b44_wu, y_8b44_rotate)
[h,p,test_stat]=kstest2(y_8cd1_wu, y_8cd1_rotate)
[h,p,test_stat]=kstest2(y_8ca0_wu, y_8ca0_rotate)


% z test
[zval,p,H]=ztest2(y_8b3f_wu, y_8b3f_rotate)
[zval,p,H]=ztest2(y_8af5_wu, y_8af5_rotate)
[zval,p,H]=ztest2(y_8af4_wu, y_8af4_rotate)
[zval,p,H]=ztest2(y_8b32_wu, y_8b32_rotate)
[zval,p,H]=ztest2(y_8b44_wu, y_8b44_rotate)
[zval,p,H]=ztest2(y_8cd1_wu, y_8cd1_rotate)
[zval,p,H]=ztest2(y_8ca0_wu, y_8ca0_rotate)


% levene test for variance
p = vartestn([y_8b3f_wu';y_8b3f_rotate'],[ones(size(y_8b3f_wu'));1+ones(size(y_8b3f_rotate'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_wu';y_8af5_rotate'],[ones(size(y_8af5_wu'));1+ones(size(y_8af5_rotate'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_wu';y_8af4_rotate'],[ones(size(y_8af4_wu'));1+ones(size(y_8af4_rotate'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_wu';y_8b32_rotate'],[ones(size(y_8b32_wu'));1+ones(size(y_8b32_rotate'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_wu';y_8b44_rotate'],[ones(size(y_8b44_wu'));1+ones(size(y_8b44_rotate'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_wu';y_8cd1_rotate'],[ones(size(y_8cd1_wu'));1+ones(size(y_8cd1_rotate'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_wu';y_8ca0_rotate'],[ones(size(y_8ca0_wu'));1+ones(size(y_8ca0_rotate'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8b3f_wu, y_8b3f_rotate)
p=ranksum(y_8af5_wu, y_8af5_rotate)
p=ranksum(y_8af4_wu, y_8af4_rotate)
p=ranksum(y_8b32_wu, y_8b32_rotate)
p=ranksum(y_8b44_wu, y_8b44_rotate)
p=ranksum(y_8cd1_wu, y_8cd1_rotate)
p=ranksum(y_8ca0_wu, y_8ca0_rotate)
