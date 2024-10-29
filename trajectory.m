v=input('enter the velocity');
angle=input('enter the angle');
g=9.81;
theta_rad=deg2rad(angle);
vox=v*cos(theta_rad);
voy=v*sin(theta_rad);
R=(v*sin(2*theta_rad))/g;
H=(voy^2)/2*g;
x=vox*t;
y=voy*t-((1/2)*g*t^2);
fprintf('range of the projectile:%.2f meters\n',R);
fprintf('max height of projectile:%.2f meters\n',H);
figure;
plot()