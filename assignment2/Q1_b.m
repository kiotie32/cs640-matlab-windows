clc;

x = [1 1 2 3 3 5 6];
y = [1 3 3 1 5 1 5];

plot(x,y,'ro');
hold on;
grid on;
axis([0 7 0 7]);

A = [ones(7,1) x'];
b = y';
x_hat = inv(A'*A)*A'*b;
X = 1:7;
Y_hat = x_hat(2,1)*X + x_hat(1,1);
plot(X,Y_hat,'r');

% m = A*x_hat - b;
% e = sqrt()

% x = [1 1 2 3 3 5 6];
% y = [1 3 3 1 5 1 5];
% 
% plot(x,y,'ro');
% hold on;
% grid on;
% axis([0 7 0 7]);
% 
% mean_x = mean(x);
% mean_y = mean(y);
% 
% n = 7;
% 
% X_bar = sum(x)/n;
% Y_bar = sum(y)/n;
% 
% sum_n = 0;
% sum_d = 0;
% 
% for i=1:n
%     sum_n = sum_n + ((x(i)-X_bar)*(y(i)-Y_bar));
%     sum_d = sum_d + ((x(i)-X_bar)^2);
% end
% 
% m = sum_n/sum_d;
% b = Y_bar - m*X_bar;
% x_cap = 1:7;
% y_cap = m*x_cap + b;
% plot(x_cap,y_cap);
% for i = 1:7
%     y_pred(i) = m*x(i)+b;
%    
% end
% error = sum((y-y_pred).^2);
% display(error)
% 
% new_x = [1 1 2 3 3 5 6 10];
% new_y = [1 3 3 1 5 1 5 10];
% plot(new_x,new_y,'o');hold on;grid on;
% axis([0 11 0 11]);
% new_mean_x = mean(new_x);
% new_mean_y = mean(new_y);
% m = 8;
% new_X_bar = sum(new_x)/m;
% new_Y_bar = sum(new_y)/m;
% new_sum_n = 0;
% new_sum_d = 0;
% for i=1:m
%     new_sum_n = new_sum_n + ((new_x(i)-new_X_bar)*(new_y(i)-new_Y_bar));
%     new_sum_d = new_sum_d + ((new_x(i)-new_X_bar)^2);
% end
% new_m = new_sum_n/new_sum_d;
% new_b = new_Y_bar - new_m*new_X_bar;
% new_x_cap = 1:11;
% new_y_cap = new_m*new_x_cap + new_b;
% plot(new_x_cap,new_y_cap);
% for i = 1:8
%     new_y_pred(i) = new_m*new_x(i)+new_b;
%    
% end
% new_error = sum((new_y-new_y_pred).^2);
% display(new_error)
% diff = new_error-error