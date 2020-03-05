function J = computeCosts(X, y, w)
m = length(y);
J = 0;
J = (1/(2*m))*sum((X*w-y).^2);
end