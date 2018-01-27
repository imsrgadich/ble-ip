subplot(1,2,1), hold on
xlim([-100 -60])
xlabel('RSSI')
title('experiment 1')
cdfplot(y_8b30)
cdfplot(y_8c6d)
legend('plast.+metal','plast.')

subplot(1,2,2), hold on
xlim([-100 -60])
xlabel('RSSI')
title('experiment 2')
cdfplot(y_8caa)
cdfplot(y_8b62)

subplot(1,2,1), hold on
title('experiment 1')

subplot(1,2,2), hold on
title('experiment 2')

matlab2tikz()


figure,histogram(y_8b30)
histogram(y_8caa)