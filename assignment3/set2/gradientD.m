clc;
data = load('dataset1.txt');
X = data(:, 1); 
y = data(:, 2);

figure;
plot(X, y, 'r.', 'linewidth', 10);
ylabel('Profit in food truck'); 
xlabel('Population of City');

m = length(y);
X = [ones(m, 1), data(:,1)]; 
w = zeros(2, 1); 
iterations = 2000;
alpha = 0.01;
J = computeCosts(X, y, w);
display(J)

cc  = 0.00001;
[w, J_history] = grades(X,y,w,alpha,iterations,cc);
hold on;


 plot(X(:,2),X*w,'-');
 legend('training data','linear regression');
 hold off;
 
figure;
plot(1:iterations,J_history,'-b');
axis([0 2000 4.5 7]);

visualize(X,y,w)