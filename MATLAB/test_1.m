function test1
x0(1)=0.5;
x0(2)=0.5;
[t,x]=ode45(@f,[-1,1],x0);

figure(1)
plot(x(:,1),x(:,2),'b')
xlabel('x');
ylabel('y');

figure (2)
plot(x(:,1),x(:,2),'r')
xlabel('t');
ylabel('x');
end

function dxdt=f(t,x)

dxdt=[x(2); sqrt(x(1)^2+2*x(1)-2*e^(x(1)))];
end