function visualize(X,y,w)

%% ============= Part 4: Visualizing J(theta_0, theta_1) =============
fprintf('Visualizing J(theta_0, theta_1) ...\n')

% Grid over which we will calculate J
w0_vals = linspace(-10, 10, 100);
w1_vals = linspace(-1, 4, 100);

% initialize J_vals to a matrix of 0's
J_vals = zeros(length(w0_vals), length(w1_vals));

% Fill out J_vals
for i = 1:length(w0_vals)
    for j = 1:length(w1_vals)
	  t = [w0_vals(i); w1_vals(j)];    
	  J_vals(i,j) = ComputeCost(X, y, t);
    end
end


% Because of the way meshgrids work in the surf command, we need to 
% transpose J_vals before calling surf, or else the axes will be flipped
J_vals = J_vals';
% Surface plot
figure;
surf(w0_vals, w1_vals, J_vals)
xlabel('\theta_0'); ylabel('\theta_1');

% Contour plot
figure;
% Plot J_vals as 15 contours spaced logarithmically between 0.01 and 100
contour(w0_vals, w1_vals, J_vals, logspace(-2, 3, 20))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
plot(w(1), w(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);
