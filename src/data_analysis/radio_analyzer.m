%% column 1
subplot(5,3,1), hold on
xlim([-100 -60])
cdfplot(y_8b3f_s4), hold on
cdfplot(y_8b3f_rAnalyzer_s4)
title('8B3F: S4 vs Radio analyzer')
xlabel('')

subplot(5,3,4), hold on
xlim([-100 -60])
cdfplot(y_8af5_s4), hold on
cdfplot(y_8af5_rAnalyzer_s4)
title('8AF5: S4 vs Radio analyzer')
xlabel('')

subplot(5,3,7), hold on
xlim([-100 -60])
cdfplot(y_8af4_s4), hold on
cdfplot(y_8af4_rAnalyzer_s4)
title('8AF4: S4 vs Radio analyzer')
xlabel('')

subplot(5,3,10), hold on
xlim([-100 -60])
cdfplot(y_8b32_s4), hold on
cdfplot(y_8b32_rAnalyzer_s4)
title('8B32: S4 vs Radio analyzer')
xlabel('')

subplot(5,3,13), hold on
xlim([-100 -60])
cdfplot(y_8b44_s4), hold on
cdfplot(y_8b44_rAnalyzer_s4)
title('8B44: S4 vs Radio analyzer')
xlabel('')

% subplot(7,3,16), hold on
% xlim([-100 -60])
% cdfplot(y_8cd1_s4), hold on
% cdfplot(y_8cd1_rAnalyzer_s4)
% title('8CD1: S4 vs Radio analyzer')
% xlabel('')
% 
% subplot(7,3,19), hold on
% xlim([-100 -60])
% cdfplot(y_8ca0_s4), hold on
% cdfplot(y_8ca0_rAnalyzer_s4)
% title('8CA0: S4 vs Radio analyzer')
% xlabel('RSSI')
% 
%% column 2
subplot(5,3,2), hold on
xlim([-100 -60])
cdfplot(y_8b3f_s4mini), hold on
cdfplot(y_8b3f_rAnalyzer_s4mini)
title('8B3F: S4 mini vs Radio analyzer')
xlabel('')

subplot(5,3,5), hold on
xlim([-100 -60])
cdfplot(y_8af5_s4mini), hold on
cdfplot(y_8af5_rAnalyzer_s4mini)
title('8AF5: S4 mini vs Radio analyzer')
xlabel('')

subplot(5,3,8), hold on
xlim([-100 -60])
cdfplot(y_8af4_s4mini), hold on
cdfplot(y_8af4_rAnalyzer_s4mini)
title('8AF4: S4 mini vs Radio analyzer')
xlabel('')

subplot(5,3,11), hold on
xlim([-100 -60])
cdfplot(y_8b32_s4mini), hold on
cdfplot(y_8b32_rAnalyzer_s4mini)
title('8B32: S4 mini vs Radio analyzer')
xlabel('')

subplot(5,3,14), hold on
xlim([-100 -60])
cdfplot(y_8b44_s4mini), hold on
cdfplot(y_8b44_rAnalyzer_s4mini)
title('8B44: S4 mini (no meas) vs Radio analyzer')
xlabel('')

% subplot(7,3,17), hold on
% xlim([-100 -60])
% cdfplot(y_8cd1_s4mini), hold on
% cdfplot(y_8cd1_rAnalyzer_s4mini)
% title('8CD1: S4 mini vs Radio analyzer')
% xlabel('')
% 
% subplot(7,3,20), hold on
% xlim([-100 -60])
% cdfplot(y_8ca0_s4mini), hold on
% cdfplot(y_8ca0_rAnalyzer_s4mini)
% title('8CA0: S4 mini (1 meas) vs Radio analyzer')
xlabel('RSSI')

legend('smartphone','radioanalyzer','Orientation','horizontal')

%% column 3
subplot(5,3,3), hold on
xlim([-100 -60])
cdfplot(y_8b3f_s7), hold on
cdfplot(y_8b3f_rAnalyzer_s7)
title('8B3F: S7 vs Radio analyzer')
xlabel('')

subplot(5,3,6), hold on
xlim([-100 -60])
cdfplot(y_8af5_s7), hold on
cdfplot(y_8af5_rAnalyzer_s7)
title('8AF5: S7 vs Radio analyzer')
xlabel('')

subplot(5,3,9), hold on
xlim([-100 -60])
cdfplot(y_8af4_s7), hold on
cdfplot(y_8af4_rAnalyzer_s7)
title('8AF4: S7 vs Radio analyzer')
xlabel('')

subplot(5,3,12), hold on
xlim([-100 -60])
cdfplot(y_8b32_s7), hold on
cdfplot(y_8b32_rAnalyzer_s7)
title('8B32: S7 vs Radio analyzer')
xlabel('')

subplot(5,3,15), hold on
xlim([-100 -60])
cdfplot(y_8b44_s7), hold on
cdfplot(y_8b44_rAnalyzer_s7)
title('8B44: S4 mini (no meas) vs Radio analyzer')
xlabel('')

% subplot(7,3,18), hold on
% xlim([-100 -60])
% cdfplot(y_8cd1_s7), hold on
% cdfplot(y_8cd1_rAnalyzer_s7)
% title('8CD1: S7 vs Radio analyzer')
% xlabel('')
% 
% subplot(7,3,21), hold on
% xlim([-100 -60])
% cdfplot(y_8ca0_s7), hold on
% cdfplot(y_8ca0_rAnalyzer_s7)
% title('8CA0: S4 mini (1 meas) vs Radio analyzer')
xlabel('RSSI')

legend('smartphone','radioanalyzer','Orientation','horizontal')


%% Hypothesis testing.

%% s4 vs radio analyzer

[mean(y_8b3f_s4),
mean(y_8af5_s4),
mean(y_8af4_s4),
mean(y_8b32_s4),
mean(y_8b44_s4),
mean(y_8cd1_s4),
mean(y_8ca0_s4)]
-
[mean(y_8b3f_rAnalyzer_s4);
mean(y_8af5_rAnalyzer_s4);
mean(y_8af4_rAnalyzer_s4);
mean(y_8b32_rAnalyzer_s4);
mean(y_8b44_rAnalyzer_s4);
mean(y_8cd1_rAnalyzer_s4);
mean(y_8ca0_rAnalyzer_s4)]



% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_s4, y_8b3f_rAnalyzer_s4)
[h,p,test_stat]=kstest2(y_8af5_s4, y_8af5_rAnalyzer_s4)
[h,p,test_stat]=kstest2(y_8af4_s4, y_8af4_rAnalyzer_s4)
[h,p,test_stat]=kstest2(y_8b32_s4, y_8b32_rAnalyzer_s4)
[h,p,test_stat]=kstest2(y_8b44_s4, y_8b44_rAnalyzer_s4)
[h,p,test_stat]=kstest2(y_8cd1_s4, y_8cd1_rAnalyzer_s4)
[h,p,test_stat]=kstest2(y_8ca0_s4, y_8ca0_rAnalyzer_s4)


% z test
[zval,p,H]=ztest2(y_8b3f_s4, y_8b3f_rAnalyzer_s4)
[zval,p,H]=ztest2(y_8af5_s4, y_8af5_rAnalyzer_s4)
[zval,p,H]=ztest2(y_8af4_s4, y_8af4_rAnalyzer_s4)
[zval,p,H]=ztest2(y_8b32_s4, y_8b32_rAnalyzer_s4)
[zval,p,H]=ztest2(y_8b44_s4, y_8b44_rAnalyzer_s4)
[zval,p,H]=ztest2(y_8cd1_s4, y_8cd1_rAnalyzer_s4)
[zval,p,H]=ztest2(y_8ca0_s4, y_8ca0_rAnalyzer_s4)


% levene test for variance
p = vartestn([y_8b3f_s4';y_8b3f_rAnalyzer_s4],[ones(size(y_8b3f_s4'));1+ones(size(y_8b3f_rAnalyzer_s4))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_s4';y_8af5_rAnalyzer_s4],[ones(size(y_8af5_s4'));1+ones(size(y_8af5_rAnalyzer_s4))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_s4';y_8af4_rAnalyzer_s4],[ones(size(y_8af4_s4'));1+ones(size(y_8af4_rAnalyzer_s4))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_s4';y_8b32_rAnalyzer_s4],[ones(size(y_8b32_s4'));1+ones(size(y_8b32_rAnalyzer_s4))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_s4';y_8b44_rAnalyzer_s4],[ones(size(y_8b44_s4'));1+ones(size(y_8b44_rAnalyzer_s4))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_s4';y_8cd1_rAnalyzer_s4],[ones(size(y_8cd1_s4'));1+ones(size(y_8cd1_rAnalyzer_s4))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_s4';y_8ca0_rAnalyzer_s4],[ones(size(y_8ca0_s4'));1+ones(size(y_8ca0_rAnalyzer_s4))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b3f_s4, y_8b3f_rAnalyzer_s4)
p=ranksum(y_8af5_s4, y_8af5_rAnalyzer_s4)
p=ranksum(y_8af4_s4, y_8af4_rAnalyzer_s4)
p=ranksum(y_8b32_s4, y_8b32_rAnalyzer_s4)
p=ranksum(y_8b44_s4, y_8b44_rAnalyzer_s4)
p=ranksum(y_8cd1_s4, y_8cd1_rAnalyzer_s4)
p=ranksum(y_8ca0_s4, y_8ca0_rAnalyzer_s4)


%% s4 mini vs radio analyzer

[mean(y_8b3f_s4mini),
mean(y_8af5_s4mini),
mean(y_8af4_s4mini),
mean(y_8b32_s4mini),
mean(y_8b44_s4mini),
mean(y_8cd1_s4mini),
mean(y_8ca0_s4mini)]
-
[mean(y_8b3f_rAnalyzer_s4mini);
mean(y_8af5_rAnalyzer_s4mini);
mean(y_8af4_rAnalyzer_s4mini);
mean(y_8b32_rAnalyzer_s4mini);
mean(y_8b44_rAnalyzer_s4mini);
mean(y_8cd1_rAnalyzer_s4mini);
mean(y_8ca0_rAnalyzer_s4mini)]



% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_s4mini, y_8b3f_rAnalyzer_s4mini)
[h,p,test_stat]=kstest2(y_8af5_s4mini, y_8af5_rAnalyzer_s4mini)
[h,p,test_stat]=kstest2(y_8af4_s4mini, y_8af4_rAnalyzer_s4mini)
[h,p,test_stat]=kstest2(y_8b32_s4mini, y_8b32_rAnalyzer_s4mini)
[h,p,test_stat]=kstest2(y_8b44_s4mini, y_8b44_rAnalyzer_s4mini)
[h,p,test_stat]=kstest2(y_8cd1_s4mini, y_8cd1_rAnalyzer_s4mini)
[h,p,test_stat]=kstest2(y_8ca0_s4mini, y_8ca0_rAnalyzer_s4mini)


% z test
[zval,p,H]=ztest2(y_8b3f_s4mini, y_8b3f_rAnalyzer_s4mini)
[zval,p,H]=ztest2(y_8af5_s4mini, y_8af5_rAnalyzer_s4mini)
[zval,p,H]=ztest2(y_8af4_s4mini, y_8af4_rAnalyzer_s4mini)
[zval,p,H]=ztest2(y_8b32_s4mini, y_8b32_rAnalyzer_s4mini)
[zval,p,H]=ztest2(y_8b44_s4mini, y_8b44_rAnalyzer_s4mini)
[zval,p,H]=ztest2(y_8cd1_s4mini, y_8cd1_rAnalyzer_s4mini)
[zval,p,H]=ztest2(y_8ca0_s4mini, y_8ca0_rAnalyzer_s4mini)


% levene test for variance
p = vartestn([y_8b3f_s4mini';y_8b3f_rAnalyzer_s4mini],[ones(size(y_8b3f_s4mini'));1+ones(size(y_8b3f_rAnalyzer_s4mini))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_s4mini';y_8af5_rAnalyzer_s4mini],[ones(size(y_8af5_s4mini'));1+ones(size(y_8af5_rAnalyzer_s4mini))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_s4mini';y_8af4_rAnalyzer_s4mini],[ones(size(y_8af4_s4mini'));1+ones(size(y_8af4_rAnalyzer_s4mini))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_s4mini';y_8b32_rAnalyzer_s4mini],[ones(size(y_8b32_s4mini'));1+ones(size(y_8b32_rAnalyzer_s4mini))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_s4mini';y_8b44_rAnalyzer_s4mini],[ones(size(y_8b44_s4mini'));1+ones(size(y_8b44_rAnalyzer_s4mini))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_s4mini';y_8cd1_rAnalyzer_s4mini],[ones(size(y_8cd1_s4mini'));1+ones(size(y_8cd1_rAnalyzer_s4mini))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_s4mini';y_8ca0_rAnalyzer_s4mini],[ones(size(y_8ca0_s4mini'));1+ones(size(y_8ca0_rAnalyzer_s4mini))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b3f_s4mini, y_8b3f_rAnalyzer_s4mini)
p=ranksum(y_8af5_s4mini, y_8af5_rAnalyzer_s4mini)
p=ranksum(y_8af4_s4mini, y_8af4_rAnalyzer_s4mini)
p=ranksum(y_8b32_s4mini, y_8b32_rAnalyzer_s4mini)
p=ranksum(y_8b44_s4mini, y_8b44_rAnalyzer_s4mini)
p=ranksum(y_8cd1_s4mini, y_8cd1_rAnalyzer_s4mini)
p=ranksum(y_8ca0_s4mini, y_8ca0_rAnalyzer_s4mini)


%% s7 vs radio analyzer

[mean(y_8b3f_s7),
mean(y_8af5_s7),
mean(y_8af4_s7),
mean(y_8b32_s7),
mean(y_8b44_s7),
mean(y_8cd1_s7),
mean(y_8ca0_s7)]
-
[mean(y_8b3f_rAnalyzer_s7);
mean(y_8af5_rAnalyzer_s7);
mean(y_8af4_rAnalyzer_s7);
mean(y_8b32_rAnalyzer_s7);
mean(y_8b44_rAnalyzer_s7);
mean(y_8cd1_rAnalyzer_s7);
mean(y_8ca0_rAnalyzer_s7)]



% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b3f_s7, y_8b3f_rAnalyzer_s7)
[h,p,test_stat]=kstest2(y_8af5_s7, y_8af5_rAnalyzer_s7)
[h,p,test_stat]=kstest2(y_8af4_s7, y_8af4_rAnalyzer_s7)
[h,p,test_stat]=kstest2(y_8b32_s7, y_8b32_rAnalyzer_s7)
[h,p,test_stat]=kstest2(y_8b44_s7, y_8b44_rAnalyzer_s7)
[h,p,test_stat]=kstest2(y_8cd1_s7, y_8cd1_rAnalyzer_s7)
[h,p,test_stat]=kstest2(y_8ca0_s7, y_8ca0_rAnalyzer_s7)


% z test
[zval,p,H]=ztest2(y_8b3f_s7, y_8b3f_rAnalyzer_s7)
[zval,p,H]=ztest2(y_8af5_s7, y_8af5_rAnalyzer_s7)
[zval,p,H]=ztest2(y_8af4_s7, y_8af4_rAnalyzer_s7)
[zval,p,H]=ztest2(y_8b32_s7, y_8b32_rAnalyzer_s7)
[zval,p,H]=ztest2(y_8b44_s7, y_8b44_rAnalyzer_s7)
[zval,p,H]=ztest2(y_8cd1_s7, y_8cd1_rAnalyzer_s7)
[zval,p,H]=ztest2(y_8ca0_s7, y_8ca0_rAnalyzer_s7)


% levene test for variance
p = vartestn([y_8b3f_s7';y_8b3f_rAnalyzer_s7],[ones(size(y_8b3f_s7'));1+ones(size(y_8b3f_rAnalyzer_s7))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5_s7';y_8af5_rAnalyzer_s7],[ones(size(y_8af5_s7'));1+ones(size(y_8af5_rAnalyzer_s7))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4_s7';y_8af4_rAnalyzer_s7],[ones(size(y_8af4_s7'));1+ones(size(y_8af4_rAnalyzer_s7))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32_s7';y_8b32_rAnalyzer_s7],[ones(size(y_8b32_s7'));1+ones(size(y_8b32_rAnalyzer_s7))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44_s7';y_8b44_rAnalyzer_s7],[ones(size(y_8b44_s7'));1+ones(size(y_8b44_rAnalyzer_s7))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1_s7';y_8cd1_rAnalyzer_s7],[ones(size(y_8cd1_s7'));1+ones(size(y_8cd1_rAnalyzer_s7))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0_s7';y_8ca0_rAnalyzer_s7],[ones(size(y_8ca0_s7'));1+ones(size(y_8ca0_rAnalyzer_s7))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
% z test
p=ranksum(y_8b3f_s7, y_8b3f_rAnalyzer_s7)
p=ranksum(y_8af5_s7, y_8af5_rAnalyzer_s7)
p=ranksum(y_8af4_s7, y_8af4_rAnalyzer_s7)
p=ranksum(y_8b32_s7, y_8b32_rAnalyzer_s7)
p=ranksum(y_8b44_s7, y_8b44_rAnalyzer_s7)
p=ranksum(y_8cd1_s7, y_8cd1_rAnalyzer_s7)
p=ranksum(y_8ca0_s7, y_8ca0_rAnalyzer_s7)




