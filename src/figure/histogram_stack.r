#http://www.cookbook-r.com/Graphs/Plotting_distributions_(ggplot2)/
#https://www.rdocumentation.org/packages/ggjoy/versions/0.3.0/topics/geom_ridgeline_gradient
#https://cran.r-project.org/web/packages/ggridges/vignettes/gallery.html

setwd("/home/imsrgadich/Documents/gitrepos/helvar/ble-ip-helvar/mat_files")

library(ggplot2movies)
library(ggplot2)
library(ggridges)
library(R.matlab)
library(hrbrthemes)
library(tikzDevice)

# function to limit the distance to 2 decimal places
scaleFUN <- function(x) sprintf("%.2f", as.numeric(x))

data <- readMat('r_var.mat')
data<- as.data.frame(data)
colnames(data) <- c("Distance (m)", "RSSI (dBm)")

#scales
mins<-min(data$`RSSI (dBm)`)
maxs<-max(data$`RSSI (dBm)`)

data  <- cbind.data.frame(Distance=data[,1],RSSI=data[,2])

data$`Distance (m)` <- as.factor(data$`Distance (m)`)
 
 plot <- ggplot(data, aes(x = `RSSI (dBm)`, y = `Distance (m)`, fill = ..x.., group = `Distance (m)`)) +
   geom_density_ridges_gradient(scale = 3, rel_min_height = 0.01, gradient_lwd = 1.) +
   scale_x_continuous(expand = c(0.01, 0)) +
   scale_y_discrete(labels=scaleFUN,expand = c(0.01, 0)) +
   scale_fill_viridis(name = "RSSI (dBm)", option = "C") +
   labs(title = 'RSSI density plots as a function of distance',
        subtitle = 'Measured at Helvar R&D without an user') +
   theme_ridges(font_size = 9, grid = TRUE) + 
   theme(axis.title.x = element_text(hjust = 0.5),
         axis.title.y = element_text(hjust = 0.5))
 
 
 ggsave('rssi_vs_distance_density.pdf', plot = last_plot(), device = "pdf", 
        path = "/home/imsrgadich/Documents/gitrepos/helvar/ble-ip-helvar/figures/",
        width = 5.39749, height=4, units = c("in"), limitsize = TRUE)
 
 #http://www.sthda.com/english/wiki/ggplot2-violin-plot-quick-start-guide-r-software-and-data-visualization
 plot1 <- ggplot(data, aes(y = `RSSI (dBm)`, x = `Distance (m)`, group = `Distance (m)`)) + 
   geom_violin(trim=FALSE)+
   scale_y_continuous(expand = c(0.01, 0)) +
   scale_x_discrete(labels=scaleFUN,expand = c(0.01, 0)) +
   labs(title = 'Vizualizing variance of the RSSI as function of distance',
        subtitle = 'Measured at Helvar R&D without an user') +
   theme_ridges(font_size = 9, grid = TRUE) + 
   theme(axis.title.x = element_text(hjust = 0.5),
         axis.title.y = element_text(hjust = 0.5),
         plot.margin = unit(c(0.1,0.5,0,0), "cm"))
   
plot1

ggsave('rssi_var_vs_distance_violin.pdf', plot = last_plot(), device = "pdf", 
       path = "/home/imsrgadich/Documents/gitrepos/helvar/ble-ip-helvar/figures/",
       width = 5.39749, height=4, units = c("in"), limitsize = FALSE)


plot2 <- ggplot(data, aes(y = `RSSI (dBm)`, x = `Distance (m)`)) + 
  geom_point(aes(group=1,colour="rssi")) +
  stat_summary(aes(y = `RSSI (dBm)`,group=1,colour="mean"), fun.y=mean, geom="line",group=1,size=1.5) +
  stat_summary(aes(y = `RSSI (dBm)`,group=1,colour="median"), fun.y=median, geom="line",group=1,size=1.5) +
  scale_colour_manual(values=c("rssi"="black","median"="blue","mean"="red")) + labs(colour="") +
  scale_y_continuous(expand = c(0.01, 0)) +
  scale_x_discrete(labels=scaleFUN,expand = c(0.01, 0)) +
  labs(title = 'Vizualizing the RSSI as function of distance',
       subtitle = 'Measured at Helvar R&D without an user',
       colour="") +
  theme_ridges(font_size = 9, grid = TRUE) + 
  theme(axis.title.x = element_text(hjust = 0.5),
        axis.title.y = element_text(hjust = 0.5),
        plot.margin = unit(c(0.1,0.5,0,0), "cm"),
        legend.position	= c(0.5,1),
        legend.direction	= "horizontal")

plot2

ggsave('rssi_vs_distance.pdf', plot = last_plot(), device = "pdf", 
       path = "/home/imsrgadich/Documents/gitrepos/helvar/ble-ip-helvar/figures/",
       width = 5.39749, height=4, units = c("in"), limitsize = FALSE)

 