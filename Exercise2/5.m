u=@heaviside;
t=-5:0.01:5;
r=@(t) t.*u(t);
d=@dirac;
x=@(t) r(t+1)-2*t(t)+r(t-1);
h=@(t) d(t+2)+d(t-2)-d(t);
y=@(t) xintegral(@(t) x(T).*h(t-T),-1,1)
for i=1:length(t)
    f(i)=y(t(i))
end
plot(t,f)
