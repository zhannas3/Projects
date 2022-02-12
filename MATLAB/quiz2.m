function quiz2
x0=[0.75,1.25];
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
x1=x(1);
x2=x(2);
dxdt=[x2; -x2*(4*(x1)^2+(x2)^2-4)-4*x1];
end