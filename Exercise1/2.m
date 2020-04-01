clear;
clc;

% define some different ranges of t to plot functions
w = -4:1:10;
x = -4:0.7:10;
y = -4:0.35:10;
z = -4:0.01:10;

% define functions
y1 = @(t) sin(pi*t) + (2*(cos(2*pi*t)));
y2 = @(t) cos(4*pi*t) .* exp(-t);
y3 = @(t) sin(5*pi*t) .* cos(pi*t);

% y(1) function 
figure(1)

subplot(2,2,1);
plot(w, y1(w), '-o', 'color', [1 0.7 0]), grid, axis([-4 10 -4 4]);
title('(With 15 samples)');
xlabel('------------------ t ------------------');
ylabel('---------- y1(t) ----------');

subplot(2,2,2);
plot(x, y1(x), '-o', 'color', [1 0.7 0]), grid, axis([-4 10 -4 4]);
title('(With 21 samples)');
xlabel('------------------ t ------------------');
ylabel('---------- y1(t) ----------');

subplot(2,2,3);
plot(y, y1(y), 'color', [1 0.7 0]), grid, axis([-4 10 -4 4]);
title('(With 41 samples)');
xlabel('------------------ t ------------------');
ylabel('---------- y1(t) ----------');

subplot(2,2,4);
plot(z, y1(z), 'color', [1 0.7 0]), grid, axis([-4 10 -4 4]);
title('(With 1401 samples)');
xlabel('------------------ t ------------------');
ylabel('---------- y1(t) ----------');

% y(2) function 
figure(2)

subplot(2,2,1);
plot(w, y2(w), '-o', 'color', [1 0.3 0.2]), grid, axis([-4 10 -60 60]);
title('(With 15 samples)');
xlabel('------------------ t ------------------');
ylabel('---------- y2(t) ----------');

subplot(2,2,2);
plot(x, y2(x), '-o', 'color', [1 0.3 0.2]), grid, axis([-4 10 -60 60]);
title('(With 21 samples)');
xlabel('------------------ t ------------------');
ylabel('---------- y2(t) ----------');

subplot(2,2,3);
plot(y, y2(y), 'color', [1 0.3 0.2]), grid, axis([-4 10 -60 60]);
title('(With 41 samples)');
xlabel('------------------ t ------------------');
ylabel('---------- y2(t) ----------');

subplot(2,2,4);
plot(z, y2(z), 'color', [1 0.3 0.2]), grid, axis([-4 10 -60 60]);
title('(With 1401 samples)');
xlabel('------------------ t ------------------');
ylabel('---------- y2(t) ----------');

% y(3) function 
figure(3)

subplot(2,2,1);
plot(w, y3(w), '-o', 'color', [0.7 0 0.2]), grid, axis([-4 10 -1.5 1.5]);
title('(With 15 samples)');
xlabel('------------------ t ------------------');
ylabel('---------- y3(t) ----------');

subplot(2,2,2);
plot(x, y3(x), '-o', 'color', [0.7 0 0.2]), grid, axis([-4 10 -1.5 1.5]);
title('(With 21 samples)');
xlabel('------------------ t ------------------');
ylabel('---------- y3(t) ----------');

subplot(2,2,3);
plot(y, y3(y), 'color', [0.7 0 0.2]), grid, axis([-4 10 -1.5 1.5]);
title('(With 41 samples)');
xlabel('------------------ t ------------------');
ylabel('---------- y3(t) ----------');

subplot(2,2,4);
plot(z, y3(z), 'color', [0.7 0 0.2]), grid, axis([-4 10 -1.5 1.5]);
title('(With 1401 samples)');
xlabel('------------------ t ------------------');
ylabel('---------- y3(t) ----------');

% Result
disp('As we can see, taking few samples in this functions, may result missing data');