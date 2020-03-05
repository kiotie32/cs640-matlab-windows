data = load('dataset2.txt');
X = data(:, 1:2);
y = data(:, 3);

%feature normalization
meanx1 = mean(X(:,1));
sigma1 = std(X(:,1));
X1_norm = (X(:,1) - meanx1)./sigma1;
meanx2 = mean(X(:,2));
sigma2 = std(X(:,2));
X2_norm = (X(:,2) - meanx2)./sigma2;
X = [X1_norm X2_norm];

%compute cost function
m = length(y);
X = [ones(m, 1) X];
alpha = 0.1;
iterations = 400;
w = zeros(3, 1);
J = computeCosts(X, y, w);
[w, J_history] = gradesmulti(X,y,w,alpha,iterations);
figure;
plot(1:iterations,J_history)

%calculate theta from normal equation
XNormEqn = [ones(m,1) data(:, 1:2)];
thetaNormEqn = NormalEquation(XNormEqn,y);

%predict house price
fprintf('Predicting the price of the following house\n');
fprintf('Sq ft = , No of bedrooms = \n');
eg1 = [1 1650 3];
disp(eg1(:,2:end))

fprintf('Price via Normal Equation:');
price1 = (eg1)*thetaNormEqn;
disp(price1);
clear price;

fprintf('Price via Gradient Descent:');
mu = [meanx1 meanx2];
stddev = [sigma1 sigma2];
theta = w;
price2 = predictPrice(theta,eg1,mu,stddev);
disp(price2);


alpha1 = 0.01;
iterations1 = 400;
w1 = zeros(3, 1);
J1 = computeCosts(X, y, w1);
[w1, J_history1] = gradesmulti(X,y,w1,alpha1,iterations1);
figure;
plot(1:iterations1,J_history1)

alpha2 = 0.001;
iterations2 = 2500;
w2 = zeros(3, 1);
J2 = computeCosts(X, y, w2);
[w2, J_history2] = gradesmulti(X,y,w2,alpha2,iterations2);
figure;
plot(1:iterations2,J_history2)