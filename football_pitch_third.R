library('ggplot2')
library('ggthemes')
ggplot(data=data.frame(x=1,y=1),aes(x,y))+
  ###pitch:
  geom_path(data=data.frame(x=c(0,0,68,68,0),y=c(0,35,35,0,0)))+
  ##penalty spot:
  geom_point(aes(x = 34, y = 23.5), size = 1) +
  ###penalty arc:
  geom_path(data=data.frame(x=c(-7300:(-1)/1000,1:7300/1000)+34,y=-c(sqrt(9.15^2-c(-7300:(-1)/1000,1:7300/1000)^2))+24),aes(x=x,y=y))+
  ###corner arc:
  geom_path(data=data.frame(x=c(0:1000/1000),y=c(35-sqrt(1^2-c(0:1000/1000)^2))),aes(x=x,y=y))+
  geom_path(data=data.frame(x=c(0:1000/1000)+67,y=c(35-sqrt(1^2-c(-1000:0/1000)^2))),aes(x=x,y=y))+
  ###corner lines:
  geom_path(data=data.frame(x=c(0,-0.5),y=c(26.85, 26.85)))+
  geom_path(data=data.frame(x=c(68,68.5),y=c(26.85, 26.85)))+
  geom_path(data=data.frame(x=c(9,9),y=c(35, 35.5)))+
  geom_path(data=data.frame(x=c(59,59),y=c(35, 35.5)))+
  ###6-yard box:
  geom_path(data=data.frame(x=c(24.85,24.85,43.15,43.15),y=c(35,29.5,29.5,35)))+
  ###goal
  geom_path(data=data.frame(x=c(30.35,30.35,37.67,37.67),y=c(35,36,36,35)))+
  ###penalty area:
  geom_path(data=data.frame(x=c(13.85,13.85,54.15,54.15),y=c(35,18.5,18.5,35)))+
  ###fix aspect ratio to 1:1
  coord_fixed() +
  ###remove all non-geom elements
  theme_solid()
