clc;
clear;

u = @heaviside;
f = @(t) u(t+1)-u(t-1);
X = @(w) integral (@(t) exp(-i*w*t).*f(t), -1, 1);
w= -10:0.01:10;

for i=1:length(w)
    s(i) = X(w(i));
end

size = abs(s);
phase = angle(s);

% plot Size
figure(1)
subplot(2,1,1);
plot(w,size, 'color', [0.35 0.7 0.6]), grid;
title('Size of f(t)');
xlabel('-------------------------------------------- t --------------------------------------------');
ylabel('--------- size(t) ---------');

% plot Phase
subplot(2,1,2);
plot(w,phase, 'color', [0.35 0.7 0.6]), grid;
title('Phase of f(t)');
xlabel('-------------------------------------------- t --------------------------------------------');
ylabel('-------- phase(t) --------');