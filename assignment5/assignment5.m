clc;
close;
val=load('C:\Users\Debian\tapas\cs640 machine learning\assignment5\MNIST.mat');
val=struct2cell(val);
csvwrite('C:\Users\Debian\tapas\cs640 machine learning\assignment5\MNIST.csv');