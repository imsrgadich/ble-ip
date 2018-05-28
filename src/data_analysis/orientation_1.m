%% column 1
subplot(7,3,1), hold on
xlim([-100 -60])
cdfplot(y_8b3f_0), hold on
cdfplot(y_8b3f_45)
title('8B3F: 0 deg vs 45 deg')
xlabel('')

subplot(7,3,4), hold on
xlim([-100 -60])
cdfplot(y_8af5_0), hold on
cdfplot(y_8af5_45)
title('8AF5: 0 deg vs 45 deg')
xlabel('')

subplot(7,3,7), hold on
xlim([-100 -60])
cdfplot(y_8af4_0), hold on
cdfplot(y_8af4_45)
title('8AF4: 0 deg vs 45 deg')
xlabel('')

subplot(7,3,10), hold on
xlim([-100 -60])
cdfplot(y_8b32_0), hold on
cdfplot(y_8b32_45)
title('8B32: 0 deg vs 45 deg')
xlabel('')

subplot(7,3,13), hold on
xlim([-100 -60])
cdfplot(y_8b44_0), hold on
cdfplot(y_8b44_45)
title('8B44: 0 deg vs 45 deg')
xlabel('')

subplot(7,3,16), hold on
xlim([-100 -60])
cdfplot(y_8cd1_0), hold on
cdfplot(y_8cd1_45)
title('8CD1: 0 deg vs 45 deg')
xlabel('')

subplot(7,3,19), hold on
xlim([-100 -60])
cdfplot(y_8ca0_0), hold on
cdfplot(y_8ca0_45)
title('8CA0: 0 deg vs 45 deg')
xlabel('RSSI')


%% column 2
subplot(7,3,2), hold on
xlim([-100 -60])
cdfplot(y_8b3f_0), hold on
cdfplot(y_8b3f_90)
title('8B3F: 0 deg vs 90 deg')
xlabel('')

subplot(7,3,5), hold on
xlim([-100 -60])
cdfplot(y_8af5_0), hold on
cdfplot(y_8af5_90)
title('8AF5: 0 deg vs 90 deg')
xlabel('')

subplot(7,3,8), hold on
xlim([-100 -60])
cdfplot(y_8af4_0), hold on
cdfplot(y_8af4_90)
title('8AF4: 0 deg vs 90 deg')
xlabel('')

subplot(7,3,11), hold on
xlim([-100 -60])
cdfplot(y_8b32_0), hold on
cdfplot(y_8b32_90)
title('8B32: 0 deg vs 90 deg')
xlabel('')

subplot(7,3,14), hold on
xlim([-100 -60])
cdfplot(y_8b44_0), hold on
cdfplot(y_8b44_90)
title('8B44: 0 deg vs 90 deg')
xlabel('')

subplot(7,3,17), hold on
xlim([-100 -60])
cdfplot(y_8cd1_0), hold on
%cdfplot(y_8cd1_90)
title('8CD1: 0 deg vs 90 deg (no meas)')
xlabel('')

subplot(7,3,20), hold on
xlim([-100 -60])
cdfplot(y_8ca0_0), hold on
cdfplot(y_8ca0_90)
title('8CA0: 0 deg vs 90 deg')
xlabel('')


xlabel('RSSI')

legend('0 deg','90 deg','Orientation','horizontal')

%% column 3
subplot(7,3,3), hold on
xlim([-100 -60])
cdfplot(y_8b3f_hand), hold on
cdfplot(y_8b3f_pocket)
title('8B3F: hand vs pocket')
xlabel('')

subplot(7,3,6), hold on
xlim([-100 -60])
cdfplot(y_8af5_hand), hold on
cdfplot(y_8af5_pocket)
title('8AF5: hand vs pocket')
xlabel('')

subplot(7,3,9), hold on
xlim([-100 -60])
cdfplot(y_8af4_hand), hold on
cdfplot(y_8af4_pocket)
title('8AF4: hand vs pocket')
xlabel('')

subplot(7,3,12), hold on
xlim([-100 -60])
cdfplot(y_8b32_hand), hold on
cdfplot(y_8b32_pocket)
title('8B32: hand vs pocket')
xlabel('')

subplot(7,3,15), hold on
xlim([-100 -60])
cdfplot(y_8b44_hand), hold on
cdfplot(y_8b44_pocket)
title('8B44: hand vs pocket')
xlabel('')

subplot(7,3,18), hold on
xlim([-100 -60])
cdfplot(y_8cd1_hand), hold on
cdfplot(y_8cd1_pocket)
title('8CD1: hand vs pocket')
xlabel('')

subplot(7,3,21), hold on
xlim([-100 -60])
cdfplot(y_8ca0_hand), hold on
cdfplot(y_8ca0_pocket)
title('8CA0: hand vs pocket')
xlabel('RSSI')

%% Hypothesis testing.

%% 0 vs 45

[mean(y_8b3f_0),
mean(y_8af5_0),
mean(y_8af4_0),
mean(y_8b32_0),
mean(y_8b44_0),
mean(y_8cd1_0),
mean(y_8ca0_0)]

[mean(y_8b3f_45);
mean(y_8af5_45);
mean(y_8af4_45);
mean(y_8b32_45);
mean(y_8b44_45);
mean(y_8cd1_45);
mean(y_8ca0_45)]



% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_0, y_8b3f_45)
[h,p,test_stat]=kstest2(y_8af5_0, y_8af5_45)
[h,p,test_stat]=kstest2(y_8af4_0, y_8af4_45)
[h,p,test_stat]=kstest2(y_8b32_0, y_8b32_45)
[h,p,test_stat]=kstest2(y_8b44_0, y_8b44_45)
[h,p,test_stat]=kstest2(y_8cd1_0, y_8cd1_45)
[h,p,test_stat]=kstest2(y_8ca0_0, y_8ca0_45)


% z test
[zval,p,H]=ztest2(y_8b3f_0, y_8b3f_45)
[zval,p,H]=ztest2(y_8af5_0, y_8af5_45)
[zval,p,H]=ztest2(y_8af4_0, y_8af4_45)
[zval,p,H]=ztest2(y_8b32_0, y_8b32_45)
[zval,p,H]=ztest2(y_8b44_0, y_8b44_45)
[zval,p,H]=ztest2(y_8cd1_0, y_8cd1_45)
[zval,p,H]=ztest2(y_8ca0_0, y_8ca0_45)


% levene test for variance
p = vartestn([y_8b3f_0';y_8b3f_45'],[ones(size(y_8b3f_0'));1+ones(size(y_8b3f_45'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_0';y_8af5_45'],[ones(size(y_8af5_0'));1+ones(size(y_8af5_45'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_0';y_8af4_45'],[ones(size(y_8af4_0'));1+ones(size(y_8af4_45'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_0';y_8b32_45'],[ones(size(y_8b32_0'));1+ones(size(y_8b32_45'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_0';y_8b44_45'],[ones(size(y_8b44_0'));1+ones(size(y_8b44_45'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_0';y_8cd1_45'],[ones(size(y_8cd1_0'));1+ones(size(y_8cd1_45'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_0';y_8ca0_45'],[ones(size(y_8ca0_0'));1+ones(size(y_8ca0_45'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b3f_0, y_8b3f_45)
p=ranksum(y_8af5_0, y_8af5_45)
p=ranksum(y_8af4_0, y_8af4_45)
p=ranksum(y_8b32_0, y_8b32_45)
p=ranksum(y_8b44_0, y_8b44_45)
p=ranksum(y_8cd1_0, y_8cd1_45)
p=ranksum(y_8ca0_0, y_8ca0_45)


%% 0 vs 90

mean(y_8b3f_0)
mean(y_8af5_0)
mean(y_8af4_0)
mean(y_8b32_0)
mean(y_8b44_0)
mean(y_8cd1_0)
mean(y_8ca0_0)

mean(y_8b3f_90)
mean(y_8af5_90)
mean(y_8af4_90)
mean(y_8b32_90)
mean(y_8b44_90)
mean(y_8cd1_90)
mean(y_8ca0_90)


% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_0, y_8b3f_90)
[h,p,test_stat]=kstest2(y_8af5_0, y_8af5_90)
[h,p,test_stat]=kstest2(y_8af4_0, y_8af4_90)
[h,p,test_stat]=kstest2(y_8b32_0, y_8b32_90)
[h,p,test_stat]=kstest2(y_8b44_0, y_8b44_90)
[h,p,test_stat]=kstest2(y_8cd1_0, y_8cd1_90)
[h,p,test_stat]=kstest2(y_8ca0_0, y_8ca0_90)


% z test
[zval,p,H]=ztest2(y_8b3f_0, y_8b3f_90)
[zval,p,H]=ztest2(y_8af5_0, y_8af5_90)
[zval,p,H]=ztest2(y_8af4_0, y_8af4_90)
[zval,p,H]=ztest2(y_8b32_0, y_8b32_90)
[zval,p,H]=ztest2(y_8b44_0, y_8b44_90)
[zval,p,H]=ztest2(y_8cd1_0, y_8cd1_90)
[zval,p,H]=ztest2(y_8ca0_0, y_8ca0_90)


% levene test for variance
p = vartestn([y_8b3f_0';y_8b3f_90'],[ones(size(y_8b3f_0'));1+ones(size(y_8b3f_90'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_0';y_8af5_90'],[ones(size(y_8af5_0'));1+ones(size(y_8af5_90'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_0';y_8af4_90'],[ones(size(y_8af4_0'));1+ones(size(y_8af4_90'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_0';y_8b32_90'],[ones(size(y_8b32_0'));1+ones(size(y_8b32_90'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_0';y_8b44_90'],[ones(size(y_8b44_0'));1+ones(size(y_8b44_90'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_0';y_8cd1_90'],[ones(size(y_8cd1_0'));1+ones(size(y_8cd1_90'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_0';y_8ca0_90'],[ones(size(y_8ca0_0'));1+ones(size(y_8ca0_90'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b3f_0, y_8b3f_90)
p=ranksum(y_8af5_0, y_8af5_90)
p=ranksum(y_8af4_0, y_8af4_90)
p=ranksum(y_8b32_0, y_8b32_90)
p=ranksum(y_8b44_0, y_8b44_90)
p=ranksum(y_8cd1_0, y_8cd1_90)
p=ranksum(y_8ca0_0, y_8ca0_90)

%% hand vs pocket

[mean(y_8b3f_hand);
mean(y_8af5_hand);
mean(y_8af4_hand);
mean(y_8b32_hand);
mean(y_8b44_hand);
mean(y_8cd1_hand);
mean(y_8ca0_hand)]

[mean(y_8b3f_pocket);
mean(y_8af5_pocket);
mean(y_8af4_pocket);
mean(y_8b32_pocket);
mean(y_8b44_pocket);
mean(y_8cd1_pocket);
mean(y_8ca0_pocket)]


% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_hand, y_8b3f_pocket)
[h,p,test_stat]=kstest2(y_8af5_hand, y_8af5_pocket)
[h,p,test_stat]=kstest2(y_8af4_hand, y_8af4_pocket)
[h,p,test_stat]=kstest2(y_8b32_hand, y_8b32_pocket)
[h,p,test_stat]=kstest2(y_8b44_hand, y_8b44_pocket)
[h,p,test_stat]=kstest2(y_8cd1_hand, y_8cd1_pocket)
[h,p,test_stat]=kstest2(y_8ca0_hand, y_8ca0_pocket)


% z test
[zval,p,H]=ztest2(y_8b3f_hand, y_8b3f_pocket)
[zval,p,H]=ztest2(y_8af5_hand, y_8af5_pocket)
[zval,p,H]=ztest2(y_8af4_hand, y_8af4_pocket)
[zval,p,H]=ztest2(y_8b32_hand, y_8b32_pocket)
[zval,p,H]=ztest2(y_8b44_hand, y_8b44_pocket)
[zval,p,H]=ztest2(y_8cd1_hand, y_8cd1_pocket)
[zval,p,H]=ztest2(y_8ca0_hand, y_8ca0_pocket)


% levene test for variance
p = vartestn([y_8b3f_hand';y_8b3f_pocket'],[ones(size(y_8b3f_hand'));1+ones(size(y_8b3f_pocket'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_hand';y_8af5_pocket'],[ones(size(y_8af5_hand'));1+ones(size(y_8af5_pocket'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_hand';y_8af4_pocket'],[ones(size(y_8af4_hand'));1+ones(size(y_8af4_pocket'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_hand';y_8b32_pocket'],[ones(size(y_8b32_hand'));1+ones(size(y_8b32_pocket'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_hand';y_8b44_pocket'],[ones(size(y_8b44_hand'));1+ones(size(y_8b44_pocket'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_hand';y_8cd1_pocket'],[ones(size(y_8cd1_hand'));1+ones(size(y_8cd1_pocket'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_hand';y_8ca0_pocket'],[ones(size(y_8ca0_hand'));1+ones(size(y_8ca0_pocket'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b3f_hand, y_8b3f_pocket)
p=ranksum(y_8af5_hand, y_8af5_pocket)
p=ranksum(y_8af4_hand, y_8af4_pocket)
p=ranksum(y_8b32_hand, y_8b32_pocket)
p=ranksum(y_8b44_hand, y_8b44_pocket)
p=ranksum(y_8cd1_hand, y_8cd1_pocket)
p=ranksum(y_8ca0_hand, y_8ca0_pocket)






