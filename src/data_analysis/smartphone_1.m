%% s4 vs s4 mini
subplot(7,3,1), hold on
xlim([-100 -60])
cdfplot(y_8b3f_s4), hold on
cdfplot(y_8b3f_s4mini)
title('8B3F: S4 vs S4 mini')
xlabel('')

subplot(7,3,4), hold on
xlim([-100 -60])
cdfplot(y_8af5_s4), hold on
cdfplot(y_8af5_s4mini)
title('8AF5: S4 vs S4 mini')
xlabel('')

subplot(7,3,7), hold on
xlim([-100 -60])
cdfplot(y_8af4_s4), hold on
cdfplot(y_8af4_s4mini)
title('8AF4: S4 vs S4 mini')
xlabel('')

subplot(7,3,10), hold on
xlim([-100 -60])
cdfplot(y_8b32_s4), hold on
cdfplot(y_8b32_s4mini)
title('8B32: S4 vs S4 mini')
xlabel('')

subplot(7,3,13), hold on
xlim([-100 -60])
cdfplot(y_8b44_s4), hold on
cdfplot(y_8b44_s4mini)
title('8B44: S4 vs S4 mini')
xlabel('')

subplot(7,3,16), hold on
xlim([-100 -60])
cdfplot(y_8cd1_s4), hold on
cdfplot(y_8cd1_s4mini)
title('8CD1: S4 vs S4 mini')
xlabel('')

subplot(7,3,19), hold on
xlim([-100 -60])
cdfplot(y_8ca0_s4), hold on
cdfplot(y_8ca0_s4mini)
title('8CA0: S4 vs S4 mini')
xlabel('RSSI')

%% s4 vs nex 5

subplot(7,3,2), hold on
xlim([-100 -60])
cdfplot(y_8b3f_s4), hold on
cdfplot(y_8b3f_nex5)
title('8B3F: S4 vs Nexus 5')
xlabel('')

subplot(7,3,5), hold on
xlim([-100 -60])
cdfplot(y_8af5_s4), hold on
cdfplot(y_8af5_nex5)
title('8AF5: S4 vs Nexus 5')
xlabel('')

subplot(7,3,8), hold on
xlim([-100 -60])
cdfplot(y_8af4_s4), hold on
cdfplot(y_8af4_nex5)
title('8AF4: S4 vs Nexus 5')
xlabel('')

subplot(7,3,11), hold on
xlim([-100 -60])
cdfplot(y_8b32_s4), hold on
cdfplot(y_8b32_nex5)
title('8B32: S4 vs Nexus 5')
xlabel('')

subplot(7,3,14), hold on
xlim([-100 -60])
cdfplot(y_8b44_s4), hold on
cdfplot(y_8b44_nex5)
title('8B44: S4 vs Nexus 5')
xlabel('')

subplot(7,3,17), hold on
xlim([-100 -60])
cdfplot(y_8cd1_s4), hold on
cdfplot(y_8cd1_nex5)
title('8CD1: S4 vs Nexus 5')
xlabel('')

subplot(7,3,20), hold on
xlim([-100 -60])
cdfplot(y_8ca0_s4), hold on
cdfplot(y_8ca0_nex5)
title('8CA0: S4 vs Nexus 5')
xlabel('RSSI')

legend('S4','Nexus 5','Orientation','horizontal')

%% s4 mini  vs nexus 5

subplot(7,3,3), hold on
xlim([-100 -60])
cdfplot(y_8b3f_s4mini), hold on
cdfplot(y_8b3f_nex5)
title('8B3F: S4 mini vs Nexus 5')
xlabel('')

subplot(7,3,6), hold on
xlim([-100 -60])
cdfplot(y_8af5_s4mini), hold on
cdfplot(y_8af5_nex5)
title('8AF5: S4 mini vs Nexus 5')
xlabel('')

subplot(7,3,9), hold on
xlim([-100 -60])
cdfplot(y_8af4_s4mini), hold on
cdfplot(y_8af4_nex5)
title('8AF4: S4 mini vs Nexus 5')
xlabel('')

subplot(7,3,12), hold on
xlim([-100 -60])
cdfplot(y_8b32_s4mini), hold on
cdfplot(y_8b32_nex5)
title('8B32: S4 mini vs Nexus 5')
xlabel('')

subplot(7,3,15), hold on
xlim([-100 -60])
cdfplot(y_8b44_s4mini), hold on
cdfplot(y_8b44_nex5)
title('8B44: S4 mini vs Nexus 5')
xlabel('')

subplot(7,3,18), hold on
xlim([-100 -60])
cdfplot(y_8cd1_s4mini), hold on
cdfplot(y_8cd1_nex5)
title('8CD1: S4 mini vs Nexus 5')
xlabel('')

subplot(7,3,21), hold on
xlim([-100 -60])
cdfplot(y_8ca0_s4mini), hold on
cdfplot(y_8ca0_nex5)
title('8CA0: S4 mini vs Nexus 5')
xlabel('RSSI')

legend('S4','Nexus 5','Orientation','horizontal')



%% Hypothesis testing.

%% s4 vs s4mini

[mean(y_8b3f_s4),
mean(y_8af5_s4),
mean(y_8af4_s4),
mean(y_8b32_s4),
mean(y_8b44_s4),
mean(y_8cd1_s4),
mean(y_8ca0_s4)]
-
[mean(y_8b3f_s4mini);
mean(y_8af5_s4mini);
mean(y_8af4_s4mini);
mean(y_8b32_s4mini);
mean(y_8b44_s4mini);
mean(y_8cd1_s4mini);
mean(y_8ca0_s4mini)]



% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_s4, y_8b3f_s4mini)
[h,p,test_stat]=kstest2(y_8af5_s4, y_8af5_s4mini)
[h,p,test_stat]=kstest2(y_8af4_s4, y_8af4_s4mini)
[h,p,test_stat]=kstest2(y_8b32_s4, y_8b32_s4mini)
[h,p,test_stat]=kstest2(y_8b44_s4, y_8b44_s4mini)
[h,p,test_stat]=kstest2(y_8cd1_s4, y_8cd1_s4mini)
[h,p,test_stat]=kstest2(y_8ca0_s4, y_8ca0_s4mini)


% z test
[zval,p,H]=ztest2(y_8b3f_s4, y_8b3f_s4mini)
[zval,p,H]=ztest2(y_8af5_s4, y_8af5_s4mini)
[zval,p,H]=ztest2(y_8af4_s4, y_8af4_s4mini)
[zval,p,H]=ztest2(y_8b32_s4, y_8b32_s4mini)
[zval,p,H]=ztest2(y_8b44_s4, y_8b44_s4mini)
[zval,p,H]=ztest2(y_8cd1_s4, y_8cd1_s4mini)
[zval,p,H]=ztest2(y_8ca0_s4, y_8ca0_s4mini)


% levene test for variance
p = vartestn([y_8b3f_s4';y_8b3f_s4mini'],[ones(size(y_8b3f_s4'));1+ones(size(y_8b3f_s4mini'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_s4';y_8af5_s4mini'],[ones(size(y_8af5_s4'));1+ones(size(y_8af5_s4mini'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_s4';y_8af4_s4mini'],[ones(size(y_8af4_s4'));1+ones(size(y_8af4_s4mini'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_s4';y_8b32_s4mini'],[ones(size(y_8b32_s4'));1+ones(size(y_8b32_s4mini'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_s4';y_8b44_s4mini'],[ones(size(y_8b44_s4'));1+ones(size(y_8b44_s4mini'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_s4';y_8cd1_s4mini'],[ones(size(y_8cd1_s4'));1+ones(size(y_8cd1_s4mini'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_s4';y_8ca0_s4mini'],[ones(size(y_8ca0_s4'));1+ones(size(y_8ca0_s4mini'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b3f_s4, y_8b3f_s4mini)
p=ranksum(y_8af5_s4, y_8af5_s4mini)
p=ranksum(y_8af4_s4, y_8af4_s4mini)
p=ranksum(y_8b32_s4, y_8b32_s4mini)
p=ranksum(y_8b44_s4, y_8b44_s4mini)
p=ranksum(y_8cd1_s4, y_8cd1_s4mini)
p=ranksum(y_8ca0_s4, y_8ca0_s4mini)



%% s4 vs nex 5
[mean(y_8b3f_s4),
mean(y_8af5_s4),
mean(y_8af4_s4),
mean(y_8b32_s4),
mean(y_8b44_s4),
mean(y_8cd1_s4),
mean(y_8ca0_s4)]
-
[mean(y_8b3f_nex5),
mean(y_8af5_nex5),
mean(y_8af4_nex5),
mean(y_8b32_nex5),
mean(y_8b44_nex5),
mean(y_8cd1_nex5),
mean(y_8ca0_nex5)]


% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_s4, y_8b3f_nex5)
[h,p,test_stat]=kstest2(y_8af5_s4, y_8af5_nex5)
[h,p,test_stat]=kstest2(y_8af4_s4, y_8af4_nex5)
[h,p,test_stat]=kstest2(y_8b32_s4, y_8b32_nex5)
[h,p,test_stat]=kstest2(y_8b44_s4, y_8b44_nex5)
[h,p,test_stat]=kstest2(y_8cd1_s4, y_8cd1_nex5)
[h,p,test_stat]=kstest2(y_8ca0_s4, y_8ca0_nex5)


% z test
[zval,p,H]=ztest2(y_8b3f_s4, y_8b3f_nex5)
[zval,p,H]=ztest2(y_8af5_s4, y_8af5_nex5)
[zval,p,H]=ztest2(y_8af4_s4, y_8af4_nex5)
[zval,p,H]=ztest2(y_8b32_s4, y_8b32_nex5)
[zval,p,H]=ztest2(y_8b44_s4, y_8b44_nex5)
[zval,p,H]=ztest2(y_8cd1_s4, y_8cd1_nex5)
[zval,p,H]=ztest2(y_8ca0_s4, y_8ca0_nex5)


% levene test for variance
p = vartestn([y_8b3f_s4';y_8b3f_nex5'],[ones(size(y_8b3f_s4'));1+ones(size(y_8b3f_nex5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_s4';y_8af5_nex5'],[ones(size(y_8af5_s4'));1+ones(size(y_8af5_nex5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_s4';y_8af4_nex5'],[ones(size(y_8af4_s4'));1+ones(size(y_8af4_nex5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_s4';y_8b32_nex5'],[ones(size(y_8b32_s4'));1+ones(size(y_8b32_nex5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_s4';y_8b44_nex5'],[ones(size(y_8b44_s4'));1+ones(size(y_8b44_nex5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_s4';y_8cd1_nex5'],[ones(size(y_8cd1_s4'));1+ones(size(y_8cd1_nex5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_s4';y_8ca0_nex5'],[ones(size(y_8ca0_s4'));1+ones(size(y_8ca0_nex5'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b3f_s4, y_8b3f_nex5)
p=ranksum(y_8af5_s4, y_8af5_nex5)
p=ranksum(y_8af4_s4, y_8af4_nex5)
p=ranksum(y_8b32_s4, y_8b32_nex5)
p=ranksum(y_8b44_s4, y_8b44_nex5)
p=ranksum(y_8cd1_s4, y_8cd1_nex5)
p=ranksum(y_8ca0_s4, y_8ca0_nex5)


%% s4mini vs nex 5
[mean(y_8b3f_s4mini),
mean(y_8af5_s4mini),
mean(y_8af4_s4mini),
mean(y_8b32_s4mini),
mean(y_8b44_s4mini),
mean(y_8cd1_s4mini),
mean(y_8ca0_s4mini)]-[mean(y_8b3f_nex5),
mean(y_8af5_nex5),
mean(y_8af4_nex5),
mean(y_8b32_nex5),
mean(y_8b44_nex5),
mean(y_8cd1_nex5),
mean(y_8ca0_nex5)]


% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_s4mini, y_8b3f_nex5)
[h,p,test_stat]=kstest2(y_8af5_s4mini, y_8af5_nex5)
[h,p,test_stat]=kstest2(y_8af4_s4mini, y_8af4_nex5)
[h,p,test_stat]=kstest2(y_8b32_s4mini, y_8b32_nex5)
[h,p,test_stat]=kstest2(y_8b44_s4mini, y_8b44_nex5)
[h,p,test_stat]=kstest2(y_8cd1_s4mini, y_8cd1_nex5)
[h,p,test_stat]=kstest2(y_8ca0_s4mini, y_8ca0_nex5)


% z test
[zval,p,H]=ztest2(y_8b3f_s4mini, y_8b3f_nex5)
[zval,p,H]=ztest2(y_8af5_s4mini, y_8af5_nex5)
[zval,p,H]=ztest2(y_8af4_s4mini, y_8af4_nex5)
[zval,p,H]=ztest2(y_8b32_s4mini, y_8b32_nex5)
[zval,p,H]=ztest2(y_8b44_s4mini, y_8b44_nex5)
[zval,p,H]=ztest2(y_8cd1_s4mini, y_8cd1_nex5)
[zval,p,H]=ztest2(y_8ca0_s4mini, y_8ca0_nex5)


% levene test for variance
p = vartestn([y_8b3f_s4mini';y_8b3f_nex5'],[ones(size(y_8b3f_s4mini'));1+ones(size(y_8b3f_nex5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_s4mini';y_8af5_nex5'],[ones(size(y_8af5_s4mini'));1+ones(size(y_8af5_nex5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_s4mini';y_8af4_nex5'],[ones(size(y_8af4_s4mini'));1+ones(size(y_8af4_nex5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_s4mini';y_8b32_nex5'],[ones(size(y_8b32_s4mini'));1+ones(size(y_8b32_nex5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_s4mini';y_8b44_nex5'],[ones(size(y_8b44_s4mini'));1+ones(size(y_8b44_nex5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_s4mini';y_8cd1_nex5'],[ones(size(y_8cd1_s4mini'));1+ones(size(y_8cd1_nex5'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_s4mini';y_8ca0_nex5'],[ones(size(y_8ca0_s4mini'));1+ones(size(y_8ca0_nex5'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b3f_s4mini, y_8b3f_nex5)
p=ranksum(y_8af5_s4mini, y_8af5_nex5)
p=ranksum(y_8af4_s4mini, y_8af4_nex5)
p=ranksum(y_8b32_s4mini, y_8b32_nex5)
p=ranksum(y_8b44_s4mini, y_8b44_nex5)
p=ranksum(y_8cd1_s4mini, y_8cd1_nex5)
p=ranksum(y_8ca0_s4mini, y_8ca0_nex5)






