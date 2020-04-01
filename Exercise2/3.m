clc;
clear;

u = @heaviside;
t = -0.5:0.01:0.5;
x = @(t) u(t+0.25) - u(t-0.25);
for i=1:length(t)
    f(i)=x(t(i));
end
figure(1)
plot(t,f, 'color', [1 0.7 0]), grid;
title('x(t) function');
xlabel('------------------ t ------------------');
ylabel('---------- x(t) ----------');

% Calculate ak
T = 2*pi;
a = @(k) 1/T * integral(@(t) x(t).*exp(-i*k*t),-0.25,0.25);
for k=-2:2
    g(i)=a(k);
end

figure(2);
plot(t,g, 'color', [1 0.7 0]), grid;
title('Values of ak');
xlabel('------------------ t ------------------');
ylabel('---------- ak(t) ----------');