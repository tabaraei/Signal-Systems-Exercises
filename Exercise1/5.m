clear;
clc;

% ----------------------- plot y1 -----------------------

% declare u & r functions
u = @heaviside;
r = @(t) t.*u(t);
% declare requested functions
x1 = @(t) u(t+3) - u(t+2) + u(t-2) - u(t-3);
h1 = @(t) r(t+1) - 2*r(t) + r(t-1);
y1 = @(t) integral(@(T) x1(t-T).*h1(T) , -10, 10);
% range of t
t = -10:0.01:10;
y1Result = zeros(1,length(t));
x1Result = zeros(1,length(t));
h1Result = zeros(1,length(t));

% compute y1
for i=1:length(t)
  y1Result(i) = y1(t(i));
end
% compute x1
for i=1:length(t)
  x1Result(i) = x1(t(i));
end
% compute h1
for i=1:length(t)
  h1Result(i) = h1(t(i));
end

% plot x1, h1, y1
figure(1)
subplot(3,1,1);
plot(t, x1Result, 'color', [1 0.7 0]), grid, axis([-10 10 0 1]);
title('(x1 function)');
xlabel('-------------------------------------------- t --------------------------------------------');
ylabel('--- x1(t) ---');

subplot(3,1,2);
plot(t, h1Result, 'color', [1 0.7 0]), grid, axis([-10 10 0 1]);
title('(h1 function)');
xlabel('-------------------------------------------- t --------------------------------------------');
ylabel('--- h1(t) ---');

subplot(3,1,3);
plot(t, y1Result, 'color', [1 0.7 0]), grid, axis([-10 10 0 1]);
title('(Convolution of x1 & h1)');
xlabel('-------------------------------------------- t --------------------------------------------');
ylabel('--- y1(t) ---');



% ----------------------- plot y2 -----------------------

% declare requested functions
x2Value = [ 3 -1 -2 2 ];
x2Domain = [ -2 -1 2 4 ];
d = @(n) double(n==0);
h2= @(n) - 3*d(n+2) + 4*d(n) + 2*d(n-4);
% range of n
n = -10:10;
y2Result = zeros(1,length(n));

% compute y2
for i=1:length(x2Domain)
  y2Result = y2Result + x2Value(i) * h2(n - x2Domain(i));
end
% compute x2 & h2
x2Result = [ 3 -1 0 0 -2 0 2 ];
h2Result = [ -3 0 4 0 0 0 2];
m = -2:4;

% plot x2, h2, y2
figure(2)
subplot(3,1,1);
stem(m, x2Result, 'color', [1 0.7 0]), grid, axis([-10 10 -20 20]);
title('(x2 function)');
xlabel('-------------------------------------------- n --------------------------------------------');
ylabel('--- x2[n] ---');

subplot(3,1,2);
stem(m, h2Result, 'color', [1 0.7 0]), grid, axis([-10 10 -20 20]);
title('(h2 function)');
xlabel('-------------------------------------------- n --------------------------------------------');
ylabel('--- h2[n] ---');

subplot(3,1,3);
stem(n, y2Result, 'color', [1 0.7 0]), grid, axis([-10 10 -20 20]);
title('(Convolution of x2 & h2)');
xlabel('-------------------------------------------- n --------------------------------------------');
ylabel('--- y2[n] ---');