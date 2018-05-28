%% s4 vs s4 mini
subplot(7,3,1), hold on
xlim([-100 -60])
cdfplot(y_8b14_s4), hold on
cdfplot(y_8b14_s4mini)
title('8B14: S4 vs S4 mini')
xlabel('')

subplot(7,3,4), hold on
xlim([-100 -60])
cdfplot(y_8b33_s4), hold on
cdfplot(y_8b33_s4mini)
title('8B33: S4 vs S4 mini')
xlabel('')

subplot(7,3,7), hold on
xlim([-100 -60])
cdfplot(y_8b26_s4), hold on
cdfplot(y_8b26_s4mini)
title('8B26: S4 vs S4 mini')
xlabel('')

subplot(7,3,10), hold on
xlim([-100 -60])
cdfplot(y_8b30_s4), hold on
cdfplot(y_8b30_s4mini)
title('8B30: S4 vs S4 mini')
xlabel('')

subplot(7,3,13), hold on
xlim([-100 -60])
cdfplot(y_8ca0_s4), hold on
cdfplot(y_8ca0_s4mini)
title('8ca0: S4 vs S4 mini')
xlabel('')

subplot(7,3,16), hold on
xlim([-100 -60])
cdfplot(y_8cd1_s4), hold on
cdfplot(y_8cd1_s4mini)
title('8CD1: S4 vs S4 mini')
xlabel('')

subplot(7,3,19), hold on
xlim([-100 -60])
cdfplot(y_8b44_s4), hold on
cdfplot(y_8b44_s4mini)
title('8B44: S4 vs S4 mini')
xlabel('RSSI')

legend('S4','S4 mini','Orientation','horizontal')

%% s4 vs nexus 5
subplot(7,3,2), hold on
xlim([-100 -60])
cdfplot(y_8b14_s4), hold on
cdfplot(y_8b14_nexus5)
title('8B14: S4 vs Nexus 5')
xlabel('')

subplot(7,3,5), hold on
xlim([-100 -60])
cdfplot(y_8b33_s4), hold on
cdfplot(y_8b33_nexus5)
title('8B33: S4 vs Nexus 5')
xlabel('')

subplot(7,3,8), hold on
xlim([-100 -60])
cdfplot(y_8b26_s4), hold on
cdfplot(y_8b26_nexus5)
title('8B26: S4 vs Nexus 5')
xlabel('')

subplot(7,3,11), hold on
xlim([-100 -60])
cdfplot(y_8b30_s4), hold on
cdfplot(y_8b30_nexus5)
title('8B30: S4 vs Nexus 5')
xlabel('')

subplot(7,3,14), hold on
xlim([-100 -60])
cdfplot(y_8ca0_s4), hold on
cdfplot(y_8ca0_nexus5)
title('8ca0: S4 vs Nexus 5')
xlabel('')

subplot(7,3,17), hold on
xlim([-100 -60])
cdfplot(y_8cd1_s4), hold on
cdfplot(y_8cd1_nexus5)
title('8CD1: S4 vs Nexus 5')
xlabel('')

subplot(7,3,20), hold on
xlim([-100 -60])
cdfplot(y_8b44_s4), hold on
cdfplot(y_8b44_nexus5)
title('8B44: S4 vs Nexus 5')
xlabel('RSSI')


%% s4 mini  vs nexus 5

subplot(7,3,3), hold on
xlim([-100 -60])
cdfplot(y_8b14_s4mini), hold on
cdfplot(y_8b14_nexus5)
title('8B14: S4 mini vs Nexus 5')
xlabel('')

subplot(7,3,6), hold on
xlim([-100 -60])
cdfplot(y_8b33_s4mini), hold on
cdfplot(y_8b33_nexus5)
title('8B33: S4 mini vs Nexus 5')
xlabel('')

subplot(7,3,9), hold on
xlim([-100 -60])
cdfplot(y_8b26_s4mini), hold on
cdfplot(y_8b26_nexus5)
title('8B26: S4 mini vs Nexus 5')
xlabel('')

subplot(7,3,12), hold on
xlim([-100 -60])
cdfplot(y_8b30_s4mini), hold on
cdfplot(y_8b30_nexus5)
title('8B30: S4 mini vs Nexus 5')
xlabel('')

subplot(7,3,15), hold on
xlim([-100 -60])
cdfplot(y_8ca0_s4mini), hold on
cdfplot(y_8ca0_nexus5)
title('8ca0: S4 mini vs Nexus 5')
xlabel('')

subplot(7,3,18), hold on
xlim([-100 -60])
cdfplot(y_8cd1_s4mini), hold on
cdfplot(y_8cd1_nexus5)
title('8CD1: S4 mini vs Nexus 5')
xlabel('')

subplot(7,3,21), hold on
xlim([-100 -60])
cdfplot(y_8b44_s4mini), hold on
cdfplot(y_8b44_nexus5)
title('8B44: S4 mini vs Nexus 5')
xlabel('RSSI')




%% Hypothesis testing.

%% s4 vs s4mini

[mean(y_8b14_s4),
mean(y_8b33_s4),
mean(y_8b26_s4),
mean(y_8b30_s4),
mean(y_8ca0_s4),
mean(y_8cd1_s4),
mean(y_8b44_s4)]
-
[mean(y_8b14_s4mini),
mean(y_8b33_s4mini),
mean(y_8b26_s4mini),
mean(y_8b30_s4mini),
mean(y_8ca0_s4mini),
mean(y_8cd1_s4mini),
mean(y_8b44_s4mini)]



% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b14_s4, y_8b14_s4mini)
[h,p,test_stat]=kstest2(y_8b33_s4, y_8b33_s4mini)
[h,p,test_stat]=kstest2(y_8b26_s4, y_8b26_s4mini)
[h,p,test_stat]=kstest2(y_8b30_s4, y_8b30_s4mini)
[h,p,test_stat]=kstest2(y_8ca0_s4, y_8ca0_s4mini)
[h,p,test_stat]=kstest2(y_8cd1_s4, y_8cd1_s4mini)
[h,p,test_stat]=kstest2(y_8b44_s4, y_8b44_s4mini)


% z test
[zval,p,H]=ztest2(y_8b14_s4, y_8b14_s4mini)
[zval,p,H]=ztest2(y_8b33_s4, y_8b33_s4mini)
[zval,p,H]=ztest2(y_8b26_s4, y_8b26_s4mini)
[zval,p,H]=ztest2(y_8b30_s4, y_8b30_s4mini)
[zval,p,H]=ztest2(y_8ca0_s4, y_8ca0_s4mini)
[zval,p,H]=ztest2(y_8cd1_s4, y_8cd1_s4mini)
[zval,p,H]=ztest2(y_8b44_s4, y_8b44_s4mini)


% levene test for variance
p = vartestn([y_8b14_s4';y_8b14_s4mini'],[ones(size(y_8b14_s4'));1+ones(size(y_8b14_s4mini'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b33_s4';y_8b33_s4mini'],[ones(size(y_8b33_s4'));1+ones(size(y_8b33_s4mini'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b26_s4';y_8b26_s4mini'],[ones(size(y_8b26_s4'));1+ones(size(y_8b26_s4mini'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b30_s4';y_8b30_s4mini'],[ones(size(y_8b30_s4'));1+ones(size(y_8b30_s4mini'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_s4';y_8ca0_s4mini'],[ones(size(y_8ca0_s4'));1+ones(size(y_8ca0_s4mini'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_s4';y_8cd1_s4mini'],[ones(size(y_8cd1_s4'));1+ones(size(y_8cd1_s4mini'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_s4';y_8b44_s4mini'],[ones(size(y_8b44_s4'));1+ones(size(y_8b44_s4mini'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b14_s4, y_8b14_s4mini)
p=ranksum(y_8b33_s4, y_8b33_s4mini)
p=ranksum(y_8b26_s4, y_8b26_s4mini)
p=ranksum(y_8b30_s4, y_8b30_s4mini)
p=ranksum(y_8ca0_s4, y_8ca0_s4mini)
p=ranksum(y_8cd1_s4, y_8cd1_s4mini)
p=ranksum(y_8b44_s4, y_8b44_s4mini)


%% s4 vs nex 5

[mean(y_8b14_s4),
mean(y_8b33_s4),
mean(y_8b26_s4),
mean(y_8b30_s4),
mean(y_8ca0_s4),
mean(y_8cd1_s4),
mean(y_8b44_s4)]
-
[mean(y_8b14_nexus5),
mean(y_8b33_nexus5),
mean(y_8b26_nexus5),
mean(y_8b30_nexus5),
mean(y_8ca0_nexus5),
mean(y_8cd1_nexus5),
mean(y_8b44_nexus5)]


% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b14_s4, y_8b14_nexus5)
[h,p,test_stat]=kstest2(y_8b33_s4, y_8b33_nexus5)
[h,p,test_stat]=kstest2(y_8b26_s4, y_8b26_nexus5)
[h,p,test_stat]=kstest2(y_8b30_s4, y_8b30_nexus5)
[h,p,test_stat]=kstest2(y_8ca0_s4, y_8ca0_nexus5)
[h,p,test_stat]=kstest2(y_8cd1_s4, y_8cd1_nexus5)
[h,p,test_stat]=kstest2(y_8b44_s4, y_8b44_nexus5)


% z test
[zval,p,H]=ztest2(y_8b14_s4, y_8b14_nexus5)
[zval,p,H]=ztest2(y_8b33_s4, y_8b33_nexus5)
[zval,p,H]=ztest2(y_8b26_s4, y_8b26_nexus5)
[zval,p,H]=ztest2(y_8b30_s4, y_8b30_nexus5)
[zval,p,H]=ztest2(y_8ca0_s4, y_8ca0_nexus5)
[zval,p,H]=ztest2(y_8cd1_s4, y_8cd1_nexus5)
[zval,p,H]=ztest2(y_8b44_s4, y_8b44_nexus5)


% levene test for variance
p = vartestn([y_8b14_s4';y_8b14_nexus5'],[ones(size(y_8b14_s4'));1+ones(size(y_8b14_nexus5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b33_s4';y_8b33_nexus5'],[ones(size(y_8b33_s4'));1+ones(size(y_8b33_nexus5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b26_s4';y_8b26_nexus5'],[ones(size(y_8b26_s4'));1+ones(size(y_8b26_nexus5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b30_s4';y_8b30_nexus5'],[ones(size(y_8b30_s4'));1+ones(size(y_8b30_nexus5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_s4';y_8ca0_nexus5'],[ones(size(y_8ca0_s4'));1+ones(size(y_8ca0_nexus5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_s4';y_8cd1_nexus5'],[ones(size(y_8cd1_s4'));1+ones(size(y_8cd1_nexus5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_s4';y_8b44_nexus5'],[ones(size(y_8b44_s4'));1+ones(size(y_8b44_nexus5'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b14_s4, y_8b14_nexus5)
p=ranksum(y_8b33_s4, y_8b33_nexus5)
p=ranksum(y_8b26_s4, y_8b26_nexus5)
p=ranksum(y_8b30_s4, y_8b30_nexus5)
p=ranksum(y_8ca0_s4, y_8ca0_nexus5)
p=ranksum(y_8cd1_s4, y_8cd1_nexus5)
p=ranksum(y_8b44_s4, y_8b44_nexus5)




%% s4mini vs nex 5

[mean(y_8b14_s4mini),
mean(y_8b33_s4mini),
mean(y_8b26_s4mini),
mean(y_8b30_s4mini),
mean(y_8ca0_s4mini),
mean(y_8cd1_s4mini),
mean(y_8b44_s4mini)]
-
[mean(y_8b14_nexus5),
mean(y_8b33_nexus5),
mean(y_8b26_nexus5),
mean(y_8b30_nexus5),
mean(y_8ca0_nexus5),
mean(y_8cd1_nexus5),
mean(y_8b44_nexus5)]


% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b14_s4mini, y_8b14_nexus5)
[h,p,test_stat]=kstest2(y_8b33_s4mini, y_8b33_nexus5)
[h,p,test_stat]=kstest2(y_8b26_s4mini, y_8b26_nexus5)
[h,p,test_stat]=kstest2(y_8b30_s4mini, y_8b30_nexus5)
[h,p,test_stat]=kstest2(y_8ca0_s4mini, y_8ca0_nexus5)
[h,p,test_stat]=kstest2(y_8cd1_s4mini, y_8cd1_nexus5)
[h,p,test_stat]=kstest2(y_8b44_s4mini, y_8b44_nexus5)


% z test
[zval,p,H]=ztest2(y_8b14_s4mini, y_8b14_nexus5)
[zval,p,H]=ztest2(y_8b33_s4mini, y_8b33_nexus5)
[zval,p,H]=ztest2(y_8b26_s4mini, y_8b26_nexus5)
[zval,p,H]=ztest2(y_8b30_s4mini, y_8b30_nexus5)
[zval,p,H]=ztest2(y_8ca0_s4mini, y_8ca0_nexus5)
[zval,p,H]=ztest2(y_8cd1_s4mini, y_8cd1_nexus5)
[zval,p,H]=ztest2(y_8b44_s4mini, y_8b44_nexus5)


% levene test for variance
p = vartestn([y_8b14_s4mini';y_8b14_nexus5'],[ones(size(y_8b14_s4mini'));1+ones(size(y_8b14_nexus5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b33_s4mini';y_8b33_nexus5'],[ones(size(y_8b33_s4mini'));1+ones(size(y_8b33_nexus5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b26_s4mini';y_8b26_nexus5'],[ones(size(y_8b26_s4mini'));1+ones(size(y_8b26_nexus5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b30_s4mini';y_8b30_nexus5'],[ones(size(y_8b30_s4mini'));1+ones(size(y_8b30_nexus5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_s4mini';y_8ca0_nexus5'],[ones(size(y_8ca0_s4mini'));1+ones(size(y_8ca0_nexus5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_s4mini';y_8cd1_nexus5'],[ones(size(y_8cd1_s4mini'));1+ones(size(y_8cd1_nexus5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_s4mini';y_8b44_nexus5'],[ones(size(y_8b44_s4mini'));1+ones(size(y_8b44_nexus5'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b14_s4mini, y_8b14_nexus5)
p=ranksum(y_8b33_s4mini, y_8b33_nexus5)
p=ranksum(y_8b26_s4mini, y_8b26_nexus5)
p=ranksum(y_8b30_s4mini, y_8b30_nexus5)
p=ranksum(y_8ca0_s4mini, y_8ca0_nexus5)
p=ranksum(y_8cd1_s4mini, y_8cd1_nexus5)
p=ranksum(y_8b44_s4mini, y_8b44_nexus5)




