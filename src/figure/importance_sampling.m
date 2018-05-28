x = -5:0.5:5;

norm = normpdf(x,0,1);
norm_1 = normpdf(x,0.5,1.5);
weights = norm./norm_1;

figure;
subplot(1,2,1)
plot(x,norm), hold on
plot(x,norm_1)
ylabel('p(x)')
xlabel('x')
legend('Target distribution','Importance Distribution','Orientation','Horizontal')

subplot(1,2,2)
stem(x,weights)
ylabel('weights')
