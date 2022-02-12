clear all;
close all;
l1=10;
l2=8;
gam=2*pi/5;
L = @(a) (l1./sin(pi-gam-a)+l2./(sin(a)))
dL = @(a) (l1*cos(2*pi/5-a)./(sin(2*pi/5-a).^2)-l2*cos(a)./(sin(a).^2))
ap=linspace(0,pi/4,10);
Lp = L(ap)
plot(ap,Lp);
a=fzero(dL,0.5)
xO=0.5
a=0;
b=1;
function p = bisection(f,a,b)

% provide the equation you want to solve with R.H.S = 0 form. 
% Write the L.H.S by using inline function
% Give initial guesses.
% Solves it by method of bisection.
% A very simple code. But may come handy

if f(a)*f(b)>0 
    disp('Wrong choice bro')
else
    p = (a + b)/2;
    err = abs(f(p));
    while err > 1e-7
   if f(a)*f(p)<0 
       b = p;
   else
       a = p;          
   end
    p = (a + b)/2; 
   err = abs(f(p));
    end
end