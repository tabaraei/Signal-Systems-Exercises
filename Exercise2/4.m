clc;
clear;

% plot x(t) & y(t)
u = @heaviside;
t = -0.5:0.01:0.5;
x = @(t) u(t+0.25) - u(t-0.25);
y = @(t) u(t+0.125) - u(t-0.125);
for i=1:length(t)
    f(i)=x(t(i));
    g(i)=y(t(i));
end
figure(1)
subplot(2,1,1);
plot(t,f, 'color', [1 0.7 0]), grid;
title('x(t) function');
xlabel('-------------------------------------------- t --------------------------------------------');
ylabel('----------- x(t) -----------');

subplot(2,1,2);
plot(t,g, 'color', [1 0.7 0]), grid;
title('y(t) function');
xlabel('-------------------------------------------- t --------------------------------------------');
ylabel('----------- y(t) -----------');

% Calculate ak & bk
T = 2*pi;
a = @(k) 1/T * integral(@(t) x(t).*exp(-i*k*t),-0.25,0.25);
b = @(k) 1/T * integral(@(t) y(t).*exp(-i*k*t),-0.25,0.25);
for k=-2:2
    A(i)=a(k);
    B(i)=b(k);
end

% plot ak & bk
figure(2)
subplot(2,1,1);
stem(t,A, 'color', [1 0.7 0]), grid, axis([-1 1 -1 100]);
title('Values of ak');
xlabel('-------------------------------------------- t --------------------------------------------');
ylabel('---------- ak(t) ----------');

subplot(2,1,2);
stem(t,g, 'color', [1 0.7 0]), grid, axis([-0.6 0.6 -0.5 1.5]);
title('Values of bk');
xlabel('-------------------------------------------- t --------------------------------------------');
ylabel('---------- ak(t) ----------');