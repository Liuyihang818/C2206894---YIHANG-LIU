

% useing Fourth-order Runge-Kutta method
function [n,y,t] = RK4(f,y0,h,t0,t1)

t=t0:h:t1;
y=zeros(length(y0),length(t));
y(:,1)=y0;
   for n = 1 : length(t)-1
        k1=feval(f,t(n),y(:,n));
        k2=feval(f,t(n)+h/2,y(:,n)+h/2*k1);
        k3=feval(f,t(n)+h/2,y(:,n)+h/2*k2);
        k4=feval(f,t(n)+h,y(:,n)+h*k3);
        y(:,n+1)=y(:,n)+(h/6)*(k1+2*k2+2*k3+k4);  
   end  
end