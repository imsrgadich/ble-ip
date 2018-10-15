function plot_test_data()

load('../../mat_files/test_files/test_data_new.mat')

im= imread('../../images/floorplan.png');
figure, image(im), hold on
temp_m = [1957-(m_true(:,2)*(1917/33.6)),891-(m_true(:,1)*(891/15.38))];
ind = 1:10:886;
plot(temp_m(ind,1),temp_m(ind,2),'.','Color',[0,0.5,1],'MarkerSize',10), hold on

end