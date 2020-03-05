function [w, J_history] = gradesmulti(X, y, w, alpha, iterations)
J_history = zeros(iterations, 1);
m = length(y);

for iter = 1:iterations
    h = X*w;
    j1 = w(1) - alpha*(1/m)*sum(h-y);
    j2 = w(2) - alpha*(1/m)*sum((h-y).*X(:,2));
    j3 = w(3) - alpha*(1/m)*sum((h-y).*X(:,3));
    w(1) = j1;
    w(2) = j2;
    w(3) = j3;
    J_history(iter) = computeCosts(X, y, w);
end
end