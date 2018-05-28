%% column 1
subplot(7,3,1), hold on
xlim([-100 -60])
cdfplot(y_8b14_0), hold on
cdfplot(y_8b14_45)
title('8B14: 0 deg vs 45 deg')
xlabel('')

subplot(7,3,4), hold on
xlim([-100 -60])
cdfplot(y_8b33_0), hold on
cdfplot(y_8b33_45)
title('8B33: 0 deg vs 45 deg')
xlabel('')

subplot(7,3,7), hold on
xlim([-100 -60])
cdfplot(y_8b26_0), hold on
cdfplot(y_8b26_45)
title('8B26: 0 deg vs 45 deg')
xlabel('')

subplot(7,3,10), hold on
xlim([-100 -60])
cdfplot(y_8b30_0), hold on
cdfplot(y_8b30_45)
title('8B30: 0 deg vs 45 deg')
xlabel('')

subplot(7,3,13), hold on
xlim([-100 -60])
cdfplot(y_8ca0_0), hold on
cdfplot(y_8ca0_45)
title('8CA0: 0 deg vs 45 deg')
xlabel('')

subplot(7,3,16), hold on
xlim([-100 -60])
cdfplot(y_8cd1_0), hold on
cdfplot(y_8cd1_45)
title('8CD1: 0 deg vs 45 deg')
xlabel('')

subplot(7,3,19), hold on
xlim([-100 -60])
cdfplot(y_8b44_0), hold on
cdfplot(y_8b44_45)
title('8B44: 0 deg vs 45 deg')
xlabel('RSSI')


%% column 2
subplot(7,3,2), hold on
xlim([-100 -60])
cdfplot(y_8b14_0), hold on
cdfplot(y_8b14_90)
title('8B14: 0 deg vs 90 deg')
xlabel('')

subplot(7,3,5), hold on
xlim([-100 -60])
cdfplot(y_8b33_0), hold on
cdfplot(y_8b33_90)
title('8B33: 0 deg vs 90 deg')
xlabel('')

subplot(7,3,8), hold on
xlim([-100 -60])
cdfplot(y_8b26_0), hold on
cdfplot(y_8b26_90)
title('8B26: 0 deg vs 90 deg')
xlabel('')

subplot(7,3,11), hold on
xlim([-100 -60])
cdfplot(y_8b30_0), hold on
cdfplot(y_8b30_90)
title('8B30: 0 deg vs 90 deg')
xlabel('')

subplot(7,3,14), hold on
xlim([-100 -60])
cdfplot(y_8ca0_0), hold on
cdfplot(y_8ca0_90)
title('8CA0: 0 deg vs 90 deg')
xlabel('')

subplot(7,3,17), hold on
xlim([-100 -60])
cdfplot(y_8cd1_0), hold on
cdfplot(y_8cd1_90)
title('8CD1: 0 deg vs 90 deg')
xlabel('')

subplot(7,3,20), hold on
xlim([-100 -60])
cdfplot(y_8b44_0), hold on
cdfplot(y_8b44_90)
title('8B44: 0 deg vs 90 deg')
xlabel('RSSI')


%% column 3
subplot(7,3,3), hold on
xlim([-100 -60])
cdfplot(y_8b14_hand), hold on
cdfplot(y_8b14_pocket)
title('8B14: hand vs pocket')
xlabel('')

subplot(7,3,6), hold on
xlim([-100 -60])
cdfplot(y_8b33_hand), hold on
cdfplot(y_8b33_pocket)
title('8B33: hand vs pocket')
xlabel('')

subplot(7,3,9), hold on
xlim([-100 -60])
cdfplot(y_8b26_hand), hold on
cdfplot(y_8b26_pocket)
title('8B26: hand vs pocket')
xlabel('')

subplot(7,3,12), hold on
xlim([-100 -60])
cdfplot(y_8b30_hand), hold on
cdfplot(y_8b30_pocket)
title('8B30: hand vs pocket')
xlabel('')

subplot(7,3,15), hold on
xlim([-100 -60])
cdfplot(y_8ca0_hand), hold on
cdfplot(y_8ca0_pocket)
title('8CA0: hand vs pocket')
xlabel('')

subplot(7,3,18), hold on
xlim([-100 -60])
cdfplot(y_8cd1_hand), hold on
cdfplot(y_8cd1_pocket)
title('8CD1: hand vs pocket')
xlabel('')

subplot(7,3,21), hold on
xlim([-100 -60])
cdfplot(y_8b44_hand), hold on
cdfplot(y_8b44_pocket)
title('8B44: hand vs pocket')
xlabel('RSSI')


legend('0 deg','90 deg','Orientation','horizontal')


%% Hypothesis testing.

%% 0 vs 45

[mean(y_8b14_0),
mean(y_8b33_0),
mean(y_8b26_0),
mean(y_8b30_0),
mean(y_8ca0_0),
mean(y_8cd1_0),
mean(y_8b44_0)]
-
[mean(y_8b14_45),
mean(y_8b33_45),
mean(y_8b26_45),
mean(y_8b30_45),
mean(y_8ca0_45),
mean(y_8cd1_45),
mean(y_8b44_45)]




% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b14_0, y_8b14_45)
[h,p,test_stat]=kstest2(y_8b33_0, y_8b33_45)
[h,p,test_stat]=kstest2(y_8b26_0, y_8b26_45)
[h,p,test_stat]=kstest2(y_8b30_0, y_8b30_45)
[h,p,test_stat]=kstest2(y_8ca0_0, y_8ca0_45)
[h,p,test_stat]=kstest2(y_8cd1_0, y_8cd1_45)
[h,p,test_stat]=kstest2(y_8b44_0, y_8b44_45)



% z test
[zval,p,H]=ztest2(y_8b14_0, y_8b14_45)
[zval,p,H]=ztest2(y_8b33_0, y_8b33_45)
[zval,p,H]=ztest2(y_8b26_0, y_8b26_45)
[zval,p,H]=ztest2(y_8b30_0, y_8b30_45)
[zval,p,H]=ztest2(y_8ca0_0, y_8ca0_45)
[zval,p,H]=ztest2(y_8cd1_0, y_8cd1_45)
[zval,p,H]=ztest2(y_8b44_0, y_8b44_45)


% levene test for variance
p = vartestn([y_8b14_0';y_8b14_45'],[ones(size(y_8b14_0'));1+ones(size(y_8b14_45'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b33_0';y_8b33_45'],[ones(size(y_8b33_0'));1+ones(size(y_8b33_45'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b26_0';y_8b26_45'],[ones(size(y_8b26_0'));1+ones(size(y_8b26_45'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b30_0';y_8b30_45'],[ones(size(y_8b30_0'));1+ones(size(y_8b30_45'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_0';y_8ca0_45'],[ones(size(y_8ca0_0'));1+ones(size(y_8ca0_45'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_0';y_8cd1_45'],[ones(size(y_8cd1_0'));1+ones(size(y_8cd1_45'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_0';y_8b44_45'],[ones(size(y_8b44_0'));1+ones(size(y_8b44_45'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b14_0, y_8b14_45)
p=ranksum(y_8b33_0, y_8b33_45)
p=ranksum(y_8b26_0, y_8b26_45)
p=ranksum(y_8b30_0, y_8b30_45)
p=ranksum(y_8ca0_0, y_8ca0_45)
p=ranksum(y_8cd1_0, y_8cd1_45)
p=ranksum(y_8b44_0, y_8b44_45)



%% 0 vs 90
[mean(y_8b14_0),
mean(y_8b33_0),
mean(y_8b26_0),
mean(y_8b30_0),
mean(y_8ca0_0),
mean(y_8cd1_0),
mean(y_8b44_0)]
-
[mean(y_8b14_90),
mean(y_8b33_90),
mean(y_8b26_90),
mean(y_8b30_90),
mean(y_8ca0_90),
mean(y_8cd1_90),
mean(y_8b44_90)]




% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b14_0, y_8b14_90)
[h,p,test_stat]=kstest2(y_8b33_0, y_8b33_90)
[h,p,test_stat]=kstest2(y_8b26_0, y_8b26_90)
[h,p,test_stat]=kstest2(y_8b30_0, y_8b30_90)
[h,p,test_stat]=kstest2(y_8ca0_0, y_8ca0_90)
[h,p,test_stat]=kstest2(y_8cd1_0, y_8cd1_90)
[h,p,test_stat]=kstest2(y_8b44_0, y_8b44_90)



% z test
[zval,p,H]=ztest2(y_8b14_0, y_8b14_90)
[zval,p,H]=ztest2(y_8b33_0, y_8b33_90)
[zval,p,H]=ztest2(y_8b26_0, y_8b26_90)
[zval,p,H]=ztest2(y_8b30_0, y_8b30_90)
[zval,p,H]=ztest2(y_8ca0_0, y_8ca0_90)
[zval,p,H]=ztest2(y_8cd1_0, y_8cd1_90)
[zval,p,H]=ztest2(y_8b44_0, y_8b44_90)


% levene test for variance
p = vartestn([y_8b14_0';y_8b14_90'],[ones(size(y_8b14_0'));1+ones(size(y_8b14_90'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b33_0';y_8b33_90'],[ones(size(y_8b33_0'));1+ones(size(y_8b33_90'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b26_0';y_8b26_90'],[ones(size(y_8b26_0'));1+ones(size(y_8b26_90'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b30_0';y_8b30_90'],[ones(size(y_8b30_0'));1+ones(size(y_8b30_90'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_0';y_8ca0_90'],[ones(size(y_8ca0_0'));1+ones(size(y_8ca0_90'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_0';y_8cd1_90'],[ones(size(y_8cd1_0'));1+ones(size(y_8cd1_90'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_0';y_8b44_90'],[ones(size(y_8b44_0'));1+ones(size(y_8b44_90'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b14_0, y_8b14_90)
p=ranksum(y_8b33_0, y_8b33_90)
p=ranksum(y_8b26_0, y_8b26_90)
p=ranksum(y_8b30_0, y_8b30_90)
p=ranksum(y_8ca0_0, y_8ca0_90)
p=ranksum(y_8cd1_0, y_8cd1_90)
p=ranksum(y_8b44_0, y_8b44_90)



%% hand vs pocket

[mean(y_8b14_hand);
mean(y_8b33_hand);
mean(y_8b26_hand);
mean(y_8b30_hand);
mean(y_8ca0_hand);
mean(y_8cd1_hand);
mean(y_8b44_hand)]
-
[mean(y_8b14_pocket);
mean(y_8b33_pocket);
mean(y_8b26_pocket);
mean(y_8b30_pocket);
mean(y_8ca0_pocket);
mean(y_8cd1_pocket);
mean(y_8b44_pocket)]



% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b14_hand, y_8b14_pocket)
[h,p,test_stat]=kstest2(y_8b33_hand, y_8b33_pocket)
[h,p,test_stat]=kstest2(y_8b26_hand, y_8b26_pocket)
[h,p,test_stat]=kstest2(y_8b30_hand, y_8b30_pocket)
[h,p,test_stat]=kstest2(y_8ca0_hand, y_8ca0_pocket)
[h,p,test_stat]=kstest2(y_8cd1_hand, y_8cd1_pocket)
[h,p,test_stat]=kstest2(y_8b44_hand, y_8b44_pocket)




% z test
[zval,p,H]=ztest2(y_8b14_hand, y_8b14_pocket)
[zval,p,H]=ztest2(y_8b33_hand, y_8b33_pocket)
[zval,p,H]=ztest2(y_8b26_hand, y_8b26_pocket)
[zval,p,H]=ztest2(y_8b30_hand, y_8b30_pocket)
[zval,p,H]=ztest2(y_8ca0_hand, y_8ca0_pocket)
[zval,p,H]=ztest2(y_8cd1_hand, y_8cd1_pocket)
[zval,p,H]=ztest2(y_8b44_hand, y_8b44_pocket)


% levene test for variance
p = vartestn([y_8b14_hand';y_8b14_pocket'],[ones(size(y_8b14_hand'));1+ones(size(y_8b14_pocket'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b33_hand';y_8b33_pocket'],[ones(size(y_8b33_hand'));1+ones(size(y_8b33_pocket'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b26_hand';y_8b26_pocket'],[ones(size(y_8b26_hand'));1+ones(size(y_8b26_pocket'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b30_hand';y_8b30_pocket'],[ones(size(y_8b30_hand'));1+ones(size(y_8b30_pocket'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_hand';y_8ca0_pocket'],[ones(size(y_8ca0_hand'));1+ones(size(y_8ca0_pocket'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_hand';y_8cd1_pocket'],[ones(size(y_8cd1_hand'));1+ones(size(y_8cd1_pocket'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_hand';y_8b44_pocket'],[ones(size(y_8b44_hand'));1+ones(size(y_8b44_pocket'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b14_hand, y_8b14_pocket)
p=ranksum(y_8b33_hand, y_8b33_pocket)
p=ranksum(y_8b26_hand, y_8b26_pocket)
p=ranksum(y_8b30_hand, y_8b30_pocket)
p=ranksum(y_8ca0_hand, y_8ca0_pocket)
p=ranksum(y_8cd1_hand, y_8cd1_pocket)
p=ranksum(y_8b44_hand, y_8b44_pocket)






