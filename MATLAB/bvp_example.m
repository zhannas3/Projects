clear all;
close all;
Ngrid=50;%total number of grid points
Ni=Ngrid-2; %number of inner nodes
unew=zeros(Ni,1); %unknown solution vector
uold=unew;
%setting tridiagonal matrix
A=zeros(Ni, Ni);
b=zeros(Ni,1);
up=zeros(Ngrid, 1);
h=1/(Ngrid-1);
l=20;
x=[0:h:1] %0,h,2h,....1
A=(1/h^2)*(2*diag(ones(Ni,1))+(-1)*diag(ones(Ni-1,1),1)...
    +(-1)*diag(ones(Ni-1,1),-1));
f=@(u)l*exp(-u) %fi=e^(-ui)
Niter=50;
for i=1: Niter
    b=f(uold)
    unew=A\b %A*unew=b unew=A\b
    error=norm(unew-uold)
    uold=unew;
end
up=[0;unew;0]
plot(x,up)
 