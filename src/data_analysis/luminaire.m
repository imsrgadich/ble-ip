%% experiment one.. only odd subplots.

subplot(7,2,1), hold on
xlim([-100 -60])
xlabel('')
title('30 vs 62')
cdfplot(y_8b30), hold on
cdfplot(y_8b62)
legend('plast.+metal','plast.','Orientation','horizontal')

subplot(7,2,3), hold on
xlim([-100 -60])
xlabel('')
title('A0 vs 89')
cdfplot(y_8ca0), hold on
cdfplot(y_8b89)

subplot(7,2,5), hold on
xlim([-100 -60])
xlabel('RSSI')
title('D1 vs 65')
cdfplot(y_8cd1), hold on
cdfplot(y_8b65)

subplot(7,2,7), hold on
xlim([-100 -60])
xlabel('RSSI')
title('44 vs 57')
cdfplot(y_8b44), hold on
cdfplot(y_8c57)

subplot(7,2,9), hold on
xlim([-100 -60])
xlabel('RSSI')
title('32 vs 34')
cdfplot(y_8b32), hold on
cdfplot(y_8c34)

subplot(7,2,11), hold on
xlim([-100 -60])
xlabel('RSSI')
title('F4 vs 27')
cdfplot(y_8af4), hold on
cdfplot(y_8c27)

subplot(7,2,13), hold on
xlim([-100 -60])
xlabel('RSSI')
title('F5 vs 6D')
cdfplot(y_8af5), hold on
cdfplot(y_8c6d)

%% experiment 2
subplot(7,2,2), hold on
xlim([-100 -60])
title('AA vs 6D')
cdfplot(y_8caa), hold on
cdfplot(y_8c6d)
xlabel('')
legend('plast.+metal','plast.')

subplot(7,2,4), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b11), hold on
cdfplot(y_8c27)
title('11 vs 27')

subplot(7,2,6), hold on
xlim([-100 -60])
xlabel('')
cdfplot(y_8b1d), hold on
cdfplot(y_8c34)
title('1D vs 34')

subplot(7,2,8), hold on
xlim([-100 -60])
cdfplot(y_8b3f), hold on
cdfplot(y_8c57)
xlabel('')
title('3F vs 57')

subplot(7,2,10), hold on
xlim([-100 -60])
xlabel('')
title('')
cdfplot(y_8af5), hold on
cdfplot(y_8b65)
xlabel('')
title('F5 vs 65')


subplot(7,2,12), hold on
xlim([-100 -60])
xlabel('RSSI')
title('')
cdfplot(y_8af4), hold on
cdfplot(y_8b89)
xlabel('')
title('F4 vs 89')

subplot(7,2,14), hold on
xlim([-100 -60])
xlabel('RSSI')
title('')
cdfplot(y_8b32), hold on
cdfplot(y_8b62)
xlabel('\textb{RSSI}')
title('32 vs 62')

hold on

matlab2tikz()
%% statistical tests. 

% luminaire

[mean(y_8b30),
mean(y_8ca0),
mean(y_8cd1),
mean(y_8b44),
mean(y_8b32),
mean(y_8af4),
mean(y_8af5)]
-
[mean(y_8b62);
mean(y_8b89);
mean(y_8b65);
mean(y_8c57);
mean(y_8c34);
mean(y_8c27);
mean(y_8c6d)]

% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8b30, y_8b62)
[h,p,test_stat]=kstest2(y_8ca0, y_8b89)
[h,p,test_stat]=kstest2(y_8cd1, y_8b65)
[h,p,test_stat]=kstest2(y_8b44, y_8c57)
[h,p,test_stat]=kstest2(y_8b32, y_8c34)
[h,p,test_stat]=kstest2(y_8af4, y_8c27)
[h,p,test_stat]=kstest2(y_8af5, y_8c6d)


% z test
[zval,p,H]=ztest2(y_8b30, y_8b62)
[zval,p,H]=ztest2(y_8ca0, y_8b89)
[zval,p,H]=ztest2(y_8cd1, y_8b65)
[zval,p,H]=ztest2(y_8b44, y_8c57)
[zval,p,H]=ztest2(y_8b32, y_8c34)
[zval,p,H]=ztest2(y_8af4, y_8c27)
[zval,p,H]=ztest2(y_8af5, y_8c6d)


% f test: variance analysis.
%[ci]=f_test(y_8b30, y_8b62)
%[ci]=f_test(y_8ca0, y_8b89)
%[ci]=f_test(y_8cd1, y_8b65)
% [ci]=f_test(y_8b44, y_8c57)
% [ci]=f_test(y_8b32, y_8c34)
% [ci]=f_test(y_8af4, y_8c27)
% [ci]=f_test(y_8af5, y_8c6d)

% levene test for variance
p = vartestn([y_8b30';y_8b62'],[ones(size(y_8b30'));1+ones(size(y_8b62'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8ca0';y_8b89'],[ones(size(y_8ca0'));1+ones(size(y_8b89'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8cd1';y_8b65'],[ones(size(y_8cd1'));1+ones(size(y_8b65'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b44';y_8c57'],[ones(size(y_8b44'));1+ones(size(y_8c57'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32';y_8c34'],[ones(size(y_8b32'));1+ones(size(y_8c34'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4';y_8c27'],[ones(size(y_8af4'));1+ones(size(y_8c27'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5';y_8c6d'],[ones(size(y_8af5'));1+ones(size(y_8c6d'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8b30, y_8b62)
p=ranksum(y_8ca0, y_8b89)
p=ranksum(y_8cd1, y_8b65)
p=ranksum(y_8b44, y_8c57)
p=ranksum(y_8b32, y_8c34)
p=ranksum(y_8af4, y_8c27)
p=ranksum(y_8af5, y_8c6d)




%% experiment 2.


[mean(y_8caa),
mean(y_8b11),
mean(y_8b1d),
mean(y_8b3f),
mean(y_8af5),
mean(y_8af4),
mean(y_8b32)]
-
[mean(y_8c6d);
mean(y_8c27);
mean(y_8c34);
mean(y_8c57);
mean(y_8b65);
mean(y_8b89);
mean(y_8b62)]


% same underlying population distribution.
[h,p,test_stat]=kstest2(y_8caa, y_8c6d)
[h,p,test_stat]=kstest2(y_8b11, y_8c27)
[h,p,test_stat]=kstest2(y_8b1d, y_8c34)
[h,p,test_stat]=kstest2(y_8b3f, y_8c57)
[h,p,test_stat]=kstest2(y_8af5, y_8b65)
[h,p,test_stat]=kstest2(y_8af4, y_8b89)
[h,p,test_stat]=kstest2(y_8b32, y_8b62)


% z test
[zval,p,H]=ztest2(y_8caa, y_8c6d)
[zval,p,H]=ztest2(y_8b11, y_8c27)
[zval,p,H]=ztest2(y_8b1d, y_8c34)
[zval,p,H]=ztest2(y_8b3f, y_8c57)
[zval,p,H]=ztest2(y_8af5, y_8b65)
[zval,p,H]=ztest2(y_8af4, y_8b89)
[zval,p,H]=ztest2(y_8b32, y_8b62)



% levene test for variance
p = vartestn([y_8caa';y_8c6d'],[ones(size(y_8caa'));1+ones(size(y_8c6d'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b11';y_8c27'],[ones(size(y_8b11'));1+ones(size(y_8c27'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b1d';y_8c34'],[ones(size(y_8b1d'));1+ones(size(y_8c34'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b3f';y_8c57'],[ones(size(y_8b3f'));1+ones(size(y_8c57'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af5';y_8b65'],[ones(size(y_8af5'));1+ones(size(y_8b65'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8af4';y_8b89'],[ones(size(y_8af4'));1+ones(size(y_8b89'))],'TestType','LeveneAbsolute','Display','off')
p = vartestn([y_8b32';y_8b62'],[ones(size(y_8b32'));1+ones(size(y_8b62'))],'TestType','LeveneAbsolute','Display','off')



% wilcoxon rank sum test for median.
p=ranksum(y_8caa, y_8c6d)
p=ranksum(y_8b11, y_8c27)
p=ranksum(y_8b1d, y_8c34)
p=ranksum(y_8b3f, y_8c57)
p=ranksum(y_8af5, y_8b65)
p=ranksum(y_8af4, y_8b89)
p=ranksum(y_8b32, y_8b62)

