clc;
clear all;
%load the dataset
data=importdata('dataset1.txt');
x=data(:,1);
y=data(:,2);
%plot the data points
scatter(x,y,'Filled');
xlabel('input feature')
ylabel('target')
%cost function
m=length(y);
X = [ones(m, 1), data(:,1)];
theta = zeros(2, 1);
J = sum(( X* theta - y ) .^2 )/( 2 * m );
J
%Value of Theta value using gradient descent
num_iters = 1500;
alpha = 0.01;
J_history = zeros(num_iters, 1);
 for iter = 1:num_iters
    hypothesis=theta(1).*x+theta(2);
   temp0=theta(1) - alpha * (1/m)* sum((hypothesis-y).* x);
   temp1=theta(2) - alpha * (1/m) *sum(hypothesis-y);
   theta(1)=temp0;
   theta(2)=temp1;
   % number of iteration for convergence
   c1=J_history(1);
   c2=J_history(2);
   J_history(iter)=(1/2*m)*sum(( hypothesis-y ).^2);
   c1=J_history(iter);
   if iter > 1
       c2=J_history(iter-1);
   end
   if abs(c1-c2) < iter
       fprintf('Iteration for convergence: %d\n',iter);
       break;
   end
 end
fprintf('Theta(1),Theta(2): %f %f\n',theta(1),  theta(2));
%plot the line which fits the data points
hold on; 
plot(x, theta(1)*x+theta(2), '-')
%plot the figure showing no. of iteration vs cost funtion
figure;
plot(J_history,'r','Linewidth',2);
xlabel('No. of iteration')
ylabel('cost function')
% To visualize
visualize(X,y,theta)


