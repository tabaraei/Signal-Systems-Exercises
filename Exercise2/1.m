clc;
clear;

T = 2*pi/pi;
P = 1/T * integral(@(t) abs(cos(pi*t)).^2, 0, T);

disp('Power of signal is = ');
disp(P);