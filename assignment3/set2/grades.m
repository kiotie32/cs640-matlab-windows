function [w, J_history] = grades(X, y, w, alpha, iterations,cc)
J_history = zeros(iterations, 1);
m = length(y);
cc1 = J_history(1);
cc2 = J_history(1);
for iter = 1:iterations
    h = X*w;
    j1 = w(1) - alpha*(1/m)*sum(h-y);
    j2 = w(2) - alpha*(1/m)*sum((h-y).*X(:,2));
    w(1) = j1;
    w(2) = j2;
    J_history(iter) = computeCosts(X, y, w);
    cc1 = J_history(iter);
    
    if iter > 1
        cc2 = J_history(iter - 1);
    end
    if abs(cc1 - cc2) < cc
        disp(iter);
        break;
    end
end
end