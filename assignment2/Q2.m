theta = linspace(0,2*pi,90);
plot(cos(theta),sin(theta),'b','linewidth',2)
axis equal
hold on;

p = [cos(theta);sin(theta)];
norm_inf = max(abs(p));
Pinf = p;
Pinf(1, :) = p(1, :)./norm_inf;
Pinf(2, :) = p(2, :)./norm_inf;
plot(Pinf(1, :),Pinf(2, :),'r','linewidth',2)
hold on;

norm_1 = sum(abs(p));
p1 = p;
p1(1, :) = p1(1, :)./norm_1;
p1(2, :) = p1(2, :)./norm_1;
plot(p1(1, :),p1(2, :),'g','linewidth',2)
hold on;

xL = xlim;
yL = ylim;
line([0 0], yL);
line(xL,[0 0]);
axis([-1 1 -1 1]);