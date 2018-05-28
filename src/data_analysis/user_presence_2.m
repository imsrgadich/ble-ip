%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% experiment one.. only odd subplots.

%% column 1 north
subplot(7,6,1), hold on
xlim([-100 -60])
cdfplot(y_8b14_wu), hold on
cdfplot(y_8b14_north)
title('8B14: w/o user vs north')
xlabel('')

subplot(7,6,7), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b33_wu), hold on
cdfplot(y_8b33_north)
title('8B33: w/o user vs north')
xlabel('')

subplot(7,6,13), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b26_wu), hold on
cdfplot(y_8b26_north)
title('8CAA: w/o user vs north')
xlabel('')

subplot(7,6,19), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b30_wu), hold on
cdfplot(y_8b30_north)
title('8B30: w/o user vs north')
xlabel('')

subplot(7,6,25), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_north)
title('8CA0: w/o user vs north')
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
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_north)
title('8B44: w/o user vs north')
xlabel('RSSI')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% column 2: east

subplot(7,6,2), hold on
xlim([-100 -60])
cdfplot(y_8b14_wu), hold on
cdfplot(y_8b14_east)
title('8B14: w/o user vs east')
xlabel('')

subplot(7,6,8), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b33_wu), hold on
cdfplot(y_8b33_east)
title('8B33: w/o user vs east')
xlabel('')

subplot(7,6,14), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b26_wu), hold on
cdfplot(y_8b26_east)
title('8CAA: w/o user vs east')
xlabel('')

subplot(7,6,20), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b30_wu), hold on
cdfplot(y_8b30_east)
title('8B30: w/o user vs east')
xlabel('')

subplot(7,6,26), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_east)
title('8CA0: w/o user vs east')
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
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_east)
title('8B44: w/o user vs east')
xlabel('RSSI')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% column 3: south

subplot(7,6,3), hold on
xlim([-100 -60])
cdfplot(y_8b14_wu), hold on
cdfplot(y_8b14_south)
title('8B14: w/o user vs south')
xlabel('')

subplot(7,6,9), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b33_wu), hold on
cdfplot(y_8b33_south)
title('8B33: w/o user vs south')
xlabel('')

subplot(7,6,15), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b26_wu), hold on
cdfplot(y_8b26_south)
title('8CAA: w/o user vs south')
xlabel('')

subplot(7,6,21), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b30_wu), hold on
cdfplot(y_8b30_south)
title('8B30: w/o user vs south')
xlabel('')

subplot(7,6,27), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_south)
title('8CA0: w/o user vs south')
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
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_south)
title('8B44: w/o user vs south')
xlabel('RSSI')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% column 4: west


subplot(7,6,4), hold on
xlim([-100 -60])
cdfplot(y_8b14_wu), hold on
cdfplot(y_8b14_west)
title('8B14: w/o user vs west')
xlabel('')

subplot(7,6,10), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b33_wu), hold on
cdfplot(y_8b33_west)
title('8B33: w/o user vs west')
xlabel('')

subplot(7,6,16), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b26_wu), hold on
cdfplot(y_8b26_west)
title('8CAA: w/o user vs west')
xlabel('')

subplot(7,6,22), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b30_wu), hold on
cdfplot(y_8b30_west)
title('8B30: w/o user vs west')
xlabel('')

subplot(7,6,28), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_west)
title('8CA0: w/o user vs west')
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
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_west)
title('8B44: w/o user vs west')
xlabel('RSSI')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% column 5: shadow


subplot(7,6,5), hold on
xlim([-100 -60])
cdfplot(y_8b14_wu), hold on
cdfplot(y_8b14_shadow)
title('8B14: w/o user vs shadow')
xlabel('')

subplot(7,6,11), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b33_wu), hold on
cdfplot(y_8b33_shadow)
title('8B33: w/o user vs shadow')
xlabel('')

subplot(7,6,17), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b26_wu), hold on
cdfplot(y_8b26_shadow)
title('8CAA: w/o user vs shadow')
xlabel('')

subplot(7,6,23), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b30_wu), hold on
cdfplot(y_8b30_shadow)
title('8B30: w/o user vs shadow')
xlabel('')

subplot(7,6,29), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_shadow)
title('8CA0: w/o user vs shadow')
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
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_shadow)
title('8B44: w/o user vs shadow')
xlabel('RSSI')


%% column 6: rotating


subplot(7,6,6), hold on
xlim([-100 -60])
cdfplot(y_8b14_wu), hold on
cdfplot(y_8b14_rotate)
title('8B14: w/o user vs rotate')
xlabel('')

subplot(7,6,12), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b33_wu), hold on
cdfplot(y_8b33_rotate)
title('8B33: w/o user vs rotate')
xlabel('')

subplot(7,6,18), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b26_wu), hold on
cdfplot(y_8b26_rotate)
title('8CAA: w/o user vs rotate')
xlabel('')

subplot(7,6,24), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b30_wu), hold on
cdfplot(y_8b30_rotate)
title('8B30: w/o user vs rotate')
xlabel('')

subplot(7,6,30), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8ca0_wu), hold on
cdfplot(y_8ca0_rotate)
title('8CA0: w/o user vs rotate')
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
cdfplot(y_8b44_wu), hold on
cdfplot(y_8b44_rotate)
title('8B44: w/o user vs rotate')
xlabel('RSSI')


legend('withour user','with user.','Orientation','horizontal')

suptitle('User Presence: Helvar experiment 2')

matlab2tikz()
%% statistical tests. 

%% column 1

[mean(y_8b14_wu),
mean(y_8b33_wu),
mean(y_8b26_wu),
mean(y_8b30_wu),
mean(y_8ca0_wu),
mean(y_8cd1_wu),
mean(y_8b44_wu)]
-
[mean(y_8b14_north);
mean(y_8b33_north);
mean(y_8b26_north);
mean(y_8b30_north);
mean(y_8ca0_north);
mean(y_8cd1_north);
mean(y_8b44_north)]

% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b14_wu, y_8b14_north)
[h,p,test_stat]=kstest2(y_8b33_wu, y_8b33_north)
[h,p,test_stat]=kstest2(y_8b26_wu, y_8b26_north)
[h,p,test_stat]=kstest2(y_8b30_wu, y_8b30_north)
[h,p,test_stat]=kstest2(y_8ca0_wu, y_8ca0_north)
[h,p,test_stat]=kstest2(y_8cd1_wu, y_8cd1_north)
[h,p,test_stat]=kstest2(y_8b44_wu, y_8b44_north)


% z test
[zval,p,H]=ztest2(y_8b14_wu, y_8b14_north)
[zval,p,H]=ztest2(y_8b33_wu, y_8b33_north)
[zval,p,H]=ztest2(y_8b26_wu, y_8b26_north)
[zval,p,H]=ztest2(y_8b30_wu, y_8b30_north)
[zval,p,H]=ztest2(y_8ca0_wu, y_8ca0_north)
[zval,p,H]=ztest2(y_8cd1_wu, y_8cd1_north)
[zval,p,H]=ztest2(y_8b44_wu, y_8b44_north)


% levene test for variance
p = vartestn([y_8b14_wu';y_8b14_north'],[ones(size(y_8b14_wu'));1+ones(size(y_8b14_north'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b33_wu';y_8b33_north'],[ones(size(y_8b33_wu'));1+ones(size(y_8b33_north'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b26_wu';y_8b26_north'],[ones(size(y_8b26_wu'));1+ones(size(y_8b26_north'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b30_wu';y_8b30_north'],[ones(size(y_8b30_wu'));1+ones(size(y_8b30_north'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_wu';y_8ca0_north'],[ones(size(y_8ca0_wu'));1+ones(size(y_8ca0_north'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_wu';y_8cd1_north'],[ones(size(y_8cd1_wu'));1+ones(size(y_8cd1_north'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_wu';y_8b44_north'],[ones(size(y_8b44_wu'));1+ones(size(y_8b44_north'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8b14_wu, y_8b14_north)
p=ranksum(y_8b33_wu, y_8b33_north)
p=ranksum(y_8b26_wu, y_8b26_north)
p=ranksum(y_8b30_wu, y_8b30_north)
p=ranksum(y_8ca0_wu, y_8ca0_north)
p=ranksum(y_8cd1_wu, y_8cd1_north)
p=ranksum(y_8b44_wu, y_8b44_north)



%% column 2.

[mean(y_8b14_wu),
mean(y_8b33_wu),
mean(y_8b26_wu),
mean(y_8b30_wu),
mean(y_8ca0_wu),
mean(y_8cd1_wu),
mean(y_8b44_wu)]
-
[mean(y_8b14_east);
mean(y_8b33_east);
mean(y_8b26_east);
mean(y_8b30_east);
mean(y_8ca0_east);
mean(y_8cd1_east);
mean(y_8b44_east)]

% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b14_wu, y_8b14_east)
[h,p,test_stat]=kstest2(y_8b33_wu, y_8b33_east)
[h,p,test_stat]=kstest2(y_8b26_wu, y_8b26_east)
[h,p,test_stat]=kstest2(y_8b30_wu, y_8b30_east)
[h,p,test_stat]=kstest2(y_8ca0_wu, y_8ca0_east)
[h,p,test_stat]=kstest2(y_8cd1_wu, y_8cd1_east)
[h,p,test_stat]=kstest2(y_8b44_wu, y_8b44_east)


% z test
[zval,p,H]=ztest2(y_8b14_wu, y_8b14_east)
[zval,p,H]=ztest2(y_8b33_wu, y_8b33_east)
[zval,p,H]=ztest2(y_8b26_wu, y_8b26_east)
[zval,p,H]=ztest2(y_8b30_wu, y_8b30_east)
[zval,p,H]=ztest2(y_8ca0_wu, y_8ca0_east)
[zval,p,H]=ztest2(y_8cd1_wu, y_8cd1_east)
[zval,p,H]=ztest2(y_8b44_wu, y_8b44_east)


% levene test for variance
p = vartestn([y_8b14_wu';y_8b14_east'],[ones(size(y_8b14_wu'));1+ones(size(y_8b14_east'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b33_wu';y_8b33_east'],[ones(size(y_8b33_wu'));1+ones(size(y_8b33_east'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b26_wu';y_8b26_east'],[ones(size(y_8b26_wu'));1+ones(size(y_8b26_east'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b30_wu';y_8b30_east'],[ones(size(y_8b30_wu'));1+ones(size(y_8b30_east'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_wu';y_8ca0_east'],[ones(size(y_8ca0_wu'));1+ones(size(y_8ca0_east'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_wu';y_8cd1_east'],[ones(size(y_8cd1_wu'));1+ones(size(y_8cd1_east'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_wu';y_8b44_east'],[ones(size(y_8b44_wu'));1+ones(size(y_8b44_east'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8b14_wu, y_8b14_east)
p=ranksum(y_8b33_wu, y_8b33_east)
p=ranksum(y_8b26_wu, y_8b26_east)
p=ranksum(y_8b30_wu, y_8b30_east)
p=ranksum(y_8ca0_wu, y_8ca0_east)
p=ranksum(y_8cd1_wu, y_8cd1_east)
p=ranksum(y_8b44_wu, y_8b44_east)



%% column 3

[mean(y_8b14_wu),
mean(y_8b33_wu),
mean(y_8b26_wu),
mean(y_8b30_wu),
mean(y_8ca0_wu),
mean(y_8cd1_wu),
mean(y_8b44_wu)]
-
[mean(y_8b14_south);
mean(y_8b33_south);
mean(y_8b26_south);
mean(y_8b30_south);
mean(y_8ca0_south);
mean(y_8cd1_south);
mean(y_8b44_south)]

% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b14_wu, y_8b14_south)
[h,p,test_stat]=kstest2(y_8b33_wu, y_8b33_south)
[h,p,test_stat]=kstest2(y_8b26_wu, y_8b26_south)
[h,p,test_stat]=kstest2(y_8b30_wu, y_8b30_south)
[h,p,test_stat]=kstest2(y_8ca0_wu, y_8ca0_south)
[h,p,test_stat]=kstest2(y_8cd1_wu, y_8cd1_south)
[h,p,test_stat]=kstest2(y_8b44_wu, y_8b44_south)


% z test
[zval,p,H]=ztest2(y_8b14_wu, y_8b14_south)
[zval,p,H]=ztest2(y_8b33_wu, y_8b33_south)
[zval,p,H]=ztest2(y_8b26_wu, y_8b26_south)
[zval,p,H]=ztest2(y_8b30_wu, y_8b30_south)
[zval,p,H]=ztest2(y_8ca0_wu, y_8ca0_south)
[zval,p,H]=ztest2(y_8cd1_wu, y_8cd1_south)
[zval,p,H]=ztest2(y_8b44_wu, y_8b44_south)


% levene test for variance
p = vartestn([y_8b14_wu';y_8b14_south'],[ones(size(y_8b14_wu'));1+ones(size(y_8b14_south'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b33_wu';y_8b33_south'],[ones(size(y_8b33_wu'));1+ones(size(y_8b33_south'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b26_wu';y_8b26_south'],[ones(size(y_8b26_wu'));1+ones(size(y_8b26_south'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b30_wu';y_8b30_south'],[ones(size(y_8b30_wu'));1+ones(size(y_8b30_south'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_wu';y_8ca0_south'],[ones(size(y_8ca0_wu'));1+ones(size(y_8ca0_south'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_wu';y_8cd1_south'],[ones(size(y_8cd1_wu'));1+ones(size(y_8cd1_south'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_wu';y_8b44_south'],[ones(size(y_8b44_wu'));1+ones(size(y_8b44_south'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8b14_wu, y_8b14_south)
p=ranksum(y_8b33_wu, y_8b33_south)
p=ranksum(y_8b26_wu, y_8b26_south)
p=ranksum(y_8b30_wu, y_8b30_south)
p=ranksum(y_8ca0_wu, y_8ca0_south)
p=ranksum(y_8cd1_wu, y_8cd1_south)
p=ranksum(y_8b44_wu, y_8b44_south)


%% %% column 4.

[mean(y_8b14_wu),
mean(y_8b33_wu),
mean(y_8b26_wu),
mean(y_8b30_wu),
mean(y_8ca0_wu),
mean(y_8cd1_wu),
mean(y_8b44_wu)]
-
[mean(y_8b14_west);
mean(y_8b33_west);
mean(y_8b26_west);
mean(y_8b30_west);
mean(y_8ca0_west);
mean(y_8cd1_west);
mean(y_8b44_west)]

% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b14_wu, y_8b14_west)
[h,p,test_stat]=kstest2(y_8b33_wu, y_8b33_west)
[h,p,test_stat]=kstest2(y_8b26_wu, y_8b26_west)
[h,p,test_stat]=kstest2(y_8b30_wu, y_8b30_west)
[h,p,test_stat]=kstest2(y_8ca0_wu, y_8ca0_west)
[h,p,test_stat]=kstest2(y_8cd1_wu, y_8cd1_west)
[h,p,test_stat]=kstest2(y_8b44_wu, y_8b44_west)


% z test
[zval,p,H]=ztest2(y_8b14_wu, y_8b14_west)
[zval,p,H]=ztest2(y_8b33_wu, y_8b33_west)
[zval,p,H]=ztest2(y_8b26_wu, y_8b26_west)
[zval,p,H]=ztest2(y_8b30_wu, y_8b30_west)
[zval,p,H]=ztest2(y_8ca0_wu, y_8ca0_west)
[zval,p,H]=ztest2(y_8cd1_wu, y_8cd1_west)
[zval,p,H]=ztest2(y_8b44_wu, y_8b44_west)


% levene test for variance
p = vartestn([y_8b14_wu';y_8b14_west'],[ones(size(y_8b14_wu'));1+ones(size(y_8b14_west'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b33_wu';y_8b33_west'],[ones(size(y_8b33_wu'));1+ones(size(y_8b33_west'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b26_wu';y_8b26_west'],[ones(size(y_8b26_wu'));1+ones(size(y_8b26_west'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b30_wu';y_8b30_west'],[ones(size(y_8b30_wu'));1+ones(size(y_8b30_west'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_wu';y_8ca0_west'],[ones(size(y_8ca0_wu'));1+ones(size(y_8ca0_west'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_wu';y_8cd1_west'],[ones(size(y_8cd1_wu'));1+ones(size(y_8cd1_west'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_wu';y_8b44_west'],[ones(size(y_8b44_wu'));1+ones(size(y_8b44_west'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8b14_wu, y_8b14_west)
p=ranksum(y_8b33_wu, y_8b33_west)
p=ranksum(y_8b26_wu, y_8b26_west)
p=ranksum(y_8b30_wu, y_8b30_west)
p=ranksum(y_8ca0_wu, y_8ca0_west)
p=ranksum(y_8cd1_wu, y_8cd1_west)
p=ranksum(y_8b44_wu, y_8b44_west)

%% column 5.

[mean(y_8b14_wu),
mean(y_8b33_wu),
mean(y_8b26_wu),
mean(y_8b30_wu),
mean(y_8ca0_wu),
mean(y_8cd1_wu),
mean(y_8b44_wu)]
-
[mean(y_8b14_shadow);
mean(y_8b33_shadow);
mean(y_8b26_shadow);
mean(y_8b30_shadow);
mean(y_8ca0_shadow);
mean(y_8cd1_shadow);
mean(y_8b44_shadow)]


% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b14_wu, y_8b14_shadow)
[h,p,test_stat]=kstest2(y_8b33_wu, y_8b33_shadow)
[h,p,test_stat]=kstest2(y_8b26_wu, y_8b26_shadow)
[h,p,test_stat]=kstest2(y_8b30_wu, y_8b30_shadow)
[h,p,test_stat]=kstest2(y_8ca0_wu, y_8ca0_shadow)
[h,p,test_stat]=kstest2(y_8cd1_wu, y_8cd1_shadow)
[h,p,test_stat]=kstest2(y_8b44_wu, y_8b44_shadow)


% z test
[zval,p,H]=ztest2(y_8b14_wu, y_8b14_shadow)
[zval,p,H]=ztest2(y_8b33_wu, y_8b33_shadow)
[zval,p,H]=ztest2(y_8b26_wu, y_8b26_shadow)
[zval,p,H]=ztest2(y_8b30_wu, y_8b30_shadow)
[zval,p,H]=ztest2(y_8ca0_wu, y_8ca0_shadow)
[zval,p,H]=ztest2(y_8cd1_wu, y_8cd1_shadow)
[zval,p,H]=ztest2(y_8b44_wu, y_8b44_shadow)


% levene test for variance
p = vartestn([y_8b14_wu';y_8b14_shadow'],[ones(size(y_8b14_wu'));1+ones(size(y_8b14_shadow'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b33_wu';y_8b33_shadow'],[ones(size(y_8b33_wu'));1+ones(size(y_8b33_shadow'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b26_wu';y_8b26_shadow'],[ones(size(y_8b26_wu'));1+ones(size(y_8b26_shadow'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b30_wu';y_8b30_shadow'],[ones(size(y_8b30_wu'));1+ones(size(y_8b30_shadow'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_wu';y_8ca0_shadow'],[ones(size(y_8ca0_wu'));1+ones(size(y_8ca0_shadow'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_wu';y_8cd1_shadow'],[ones(size(y_8cd1_wu'));1+ones(size(y_8cd1_shadow'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_wu';y_8b44_shadow'],[ones(size(y_8b44_wu'));1+ones(size(y_8b44_shadow'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8b14_wu, y_8b14_shadow)
p=ranksum(y_8b33_wu, y_8b33_shadow)
p=ranksum(y_8b26_wu, y_8b26_shadow)
p=ranksum(y_8b30_wu, y_8b30_shadow)
p=ranksum(y_8ca0_wu, y_8ca0_shadow)
p=ranksum(y_8cd1_wu, y_8cd1_shadow)
p=ranksum(y_8b44_wu, y_8b44_shadow)



%% column 6.

[mean(y_8b14_wu),
mean(y_8b33_wu),
mean(y_8b26_wu),
mean(y_8b30_wu),
mean(y_8ca0_wu),
mean(y_8cd1_wu),
mean(y_8b44_wu)]
-
[mean(y_8b14_rotate);
mean(y_8b33_rotate);
mean(y_8b26_rotate);
mean(y_8b30_rotate);
mean(y_8ca0_rotate);
mean(y_8cd1_rotate);
mean(y_8b44_rotate)]

% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b14_wu, y_8b14_rotate)
[h,p,test_stat]=kstest2(y_8b33_wu, y_8b33_rotate)
[h,p,test_stat]=kstest2(y_8b26_wu, y_8b26_rotate)
[h,p,test_stat]=kstest2(y_8b30_wu, y_8b30_rotate)
[h,p,test_stat]=kstest2(y_8ca0_wu, y_8ca0_rotate)
[h,p,test_stat]=kstest2(y_8cd1_wu, y_8cd1_rotate)
[h,p,test_stat]=kstest2(y_8b44_wu, y_8b44_rotate)


% z test
[zval,p,H]=ztest2(y_8b14_wu, y_8b14_rotate)
[zval,p,H]=ztest2(y_8b33_wu, y_8b33_rotate)
[zval,p,H]=ztest2(y_8b26_wu, y_8b26_rotate)
[zval,p,H]=ztest2(y_8b30_wu, y_8b30_rotate)
[zval,p,H]=ztest2(y_8ca0_wu, y_8ca0_rotate)
[zval,p,H]=ztest2(y_8cd1_wu, y_8cd1_rotate)
[zval,p,H]=ztest2(y_8b44_wu, y_8b44_rotate)


% levene test for variance
p = vartestn([y_8b14_wu';y_8b14_rotate'],[ones(size(y_8b14_wu'));1+ones(size(y_8b14_rotate'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b33_wu';y_8b33_rotate'],[ones(size(y_8b33_wu'));1+ones(size(y_8b33_rotate'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b26_wu';y_8b26_rotate'],[ones(size(y_8b26_wu'));1+ones(size(y_8b26_rotate'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b30_wu';y_8b30_rotate'],[ones(size(y_8b30_wu'));1+ones(size(y_8b30_rotate'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_wu';y_8ca0_rotate'],[ones(size(y_8ca0_wu'));1+ones(size(y_8ca0_rotate'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_wu';y_8cd1_rotate'],[ones(size(y_8cd1_wu'));1+ones(size(y_8cd1_rotate'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_wu';y_8b44_rotate'],[ones(size(y_8b44_wu'));1+ones(size(y_8b44_rotate'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8b14_wu, y_8b14_rotate)
p=ranksum(y_8b33_wu, y_8b33_rotate)
p=ranksum(y_8b26_wu, y_8b26_rotate)
p=ranksum(y_8b30_wu, y_8b30_rotate)
p=ranksum(y_8ca0_wu, y_8ca0_rotate)
p=ranksum(y_8cd1_wu, y_8cd1_rotate)
p=ranksum(y_8b44_wu, y_8b44_rotate)

