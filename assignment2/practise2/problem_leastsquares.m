%%%%%%%% codes for problem 2 %
%%%%%%%%% MATLAB code for problem2 least squares
close
clc

%%%%%%%%%%%%%%%%%%%%%% 

p = [1 1;1 3;2 3;3 1;3 5;5 1;6 5]

p_x=[1;1;2;3;1;5;6]
p_y=[1;3;3;1;5;1;5]

%plot(p_x,p_y);
%%%%
% function [a0,a1]=linear_regression(x,y)
m=size(p_x);
n=size(p_y);
for i=1:m
    for j=1:n
    l=lsqr(p_x(i,j),2)-power(p_y(i,j),2);
    end
end
plot(l);    