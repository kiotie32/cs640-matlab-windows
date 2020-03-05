clc;

x1 = [1 1 2 3 3 5 6 10];
y1 = [1 3 3 1 5 1 5 10];

plot(x1,y1,'ro');
hold on;
grid on;
axis([0 11 0 11]);

A1 = [ones(8,1) x1'];
b1 = y1';
x_hat1 = inv(A1'*A1)*A1'*b1;
X1 = 1:11;
Y_hat1 = x_hat1(1,1)+x_hat1(2,1)*X1;
plot(X1,Y_hat1,'r');