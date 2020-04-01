clc;
clear;

a0=1;
a1=0.25;
a2=0.5;
a3=0.33;

w0=2*pi;
T=2*pi/w0;

y = @(a,k,t) a.*exp(-i*k*w0*t);
x0 = @(t) y(a0,0,t);
x1 = @(t) y(a1,1,t) + y(a1,-1,t);
x2 = @(t) y(a2,2,t) + y(a2,-2,t);
x3 = @(t) y(a3,3,t) + y(a3,-3,t);
x = @(t) x0(t) + x1(t) + x2(t) + x3(t);

t=-5:0.01:5;
for i=1:length(t)
    res0(i) = x0(t(i));
    res1(i) = x1(t(i));
    res2(i) = x2(t(i));
    res3(i) = x3(t(i));
    res(i) = x(t(i));
end

figure(1)

subplot(2,2,1);
plot(t,res0, 'color', [1 0.7 0]), grid, axis([-5 5 -1.5 1.5]);
title('x0(t) function');
xlabel('------------------ t ------------------');
ylabel('---------- x0(t) ----------');

subplot(2,2,2);
plot(t,res1, 'color', [1 0.7 0]), grid, axis([-5 5 -1.5 1.5]);
title('x1(t) function');
xlabel('------------------ t ------------------');
ylabel('---------- x1(t) ----------');

subplot(2,2,3);
plot(t,res2, 'color', [1 0.7 0]), grid, axis([-5 5 -1.5 1.5]);
title('x2(t) function');
xlabel('------------------ t ------------------');
ylabel('---------- x2(t) ----------');

subplot(2,2,4);
plot(t,res3, 'color', [1 0.7 0]), grid, axis([-5 5 -1.5 1.5]);
title('x3(t) function');
xlabel('------------------ t ------------------');
ylabel('---------- x3(t) ----------');

figure(2)
plot(t,res, 'color', [1 0.7 0]), grid, axis([-5 5 -1 4]);
title('x(t) function');
xlabel('-------------------------------------------- t --------------------------------------------');
ylabel('-------------------------------- x(t) --------------------------------');