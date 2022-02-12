function quiz1
x0=[-0.4,0.25];
[t,x]=ode45(@f,[0,10], x0);

figure (2)
plot(t,x(:,1),'r');
xlabel('t');
ylabel('x');
end

function dxdt=f(t,x)
x2=x(2);
dxdt=[t; ;];
end