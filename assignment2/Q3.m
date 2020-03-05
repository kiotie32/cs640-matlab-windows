clc;

A = [1 4 7;2 5 8;3 6 9];

[m,n] = size(A);

norm1 = max(sum(A(:,n)));
norm2 = max(svd(A));
norm_inf = max(sum(A(m,:)));
norm_N = trace(sqrt(A*A));

sum_F = 0;
for i = 1:3
    for j = 1:3
        sum_F = sum_F + (A(i,j)^2);
    end
end
norm_F = sqrt(sum_F);
disp(norm1);
disp(norm2);
disp(norm_inf);
disp(norm_N);