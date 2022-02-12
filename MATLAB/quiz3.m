function quiz3
x0=[0.2,1];

[t,x]=ode45(@f,[0,10], x0);

figure(1)
plot(x(:,1),x(:,2),'b');
xlabel('x');
ylabel('y');

figure (2)
plot(t,x(:,1),'r');
xlabel('t');
ylabel('x');
end

function dxdt=f(t,x)
eps=0.00001;
x1=x(1);
x2=x(2);
dxdt=[x2; -x1-eps*x2*(x2^2-abs(x2));];
end