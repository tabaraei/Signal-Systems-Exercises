clear;
clc;

% define variables
a = sqrt(7);
p = pi;
c = 7;

% define functions
f = @(a,r) sqrt((2*a+r)/(cos(r)+1));
g = @(x) (x^2)+(4*x)-3;

% computing expected values
K = f(3,2*p);
H = g(5)/g(2);
T = f(g(-3),sin(K));

% showing results
disp('Result of K = ');
disp(K);
disp('Result of H = ');
disp(H);
disp('Result of T = ');
disp(T);