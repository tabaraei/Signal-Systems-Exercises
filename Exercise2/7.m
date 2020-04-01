clc;
clear;

f = @(t) sin(t)/(pi*t);
X = @(w) integral (@(t) exp(-i*w*t).*f(t), -3, 3);
w= -3:0.01:3;

for i=1:length(w)
    s(i) = X(w(i));
end

rel = real(s);
img = imag(s);

% plot real part
figure(1)
subplot(2,1,1);
plot(w,rel, 'color', [0.35 0.7 0.6]), grid;
title('Real part of f(t)');
xlabel('-------------------------------------------- t --------------------------------------------');
ylabel('--------- real(t) ---------');

% plot imaginary part
subplot(2,1,2);
plot(w,img, 'color', [0.35 0.7 0.6]), grid;
title('Imaginary part of f(t)');
xlabel('-------------------------------------------- t --------------------------------------------');
ylabel('-------- imag(t) --------');