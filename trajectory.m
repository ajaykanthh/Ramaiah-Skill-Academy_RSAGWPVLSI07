% v=input('enter the velocity');
% angle=input('enter the angle');
% g=9.81;
% theta_rad=deg2rad(angle);
% vox=v*cos(theta_rad);
% voy=v*sin(theta_rad);
% R=(v*sin(2*theta_rad))/g;
% H=(voy^2)/2*g;
% x=vox*t;
% y=voy*t-((1/2)*g*t^2);
% fprintf('range of the projectile:%.2f meters\n',R);
% fprintf('max height of projectile:%.2f meters\n',H);
% figure;
% plot()


clc
clear
initial_velocity=[30 40 50 60];
launch_angle=45;
sin_value=(sin(pi/180*launch_angle));   %converting the degree to radians
%disp(sin_value)
g=9.81;                                 %gravitational value
max_height=[];
range=[];
for i=1:length(initial_velocity)
    max_height(end+1)=(initial_velocity(i)^2)*(sin_value^2)/(2*g);   %calculation of height
end
disp(max_height)
for j=1:length(initial_velocity)
    range(end+1)=initial_velocity(j)^2*2*sin_value^2/g;              %calculation of height
end
disp(range)
plot(range,max_height,'-o',LineWidth=2,Color='blue')
xlabel('Range of projectile');
ylabel('Maximum height of Projectile')
title(' Trajectory of a projectile Height vs Range')