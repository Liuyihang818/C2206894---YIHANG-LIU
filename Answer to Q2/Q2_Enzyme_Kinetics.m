function dx = Q2_Enzyme_Kinetics(t,x)

x = x(:);
% rate constants: k1=100/?M/min=1.667/?M/s, k2=600/min=10/s, k3=150/min=2.5/s.
k1 = 1.667; k2 = 0.1; k3 = 2.5;

dx(1) = -k1*x(1)*x(2)+(k2 + k3)*x(3);
dx(2) = k2*x(3) - k1*x(1)*x(2);
dx(3) = k1*x(1)*x(2) - (k2 + k3)*x(3);
dx(4) = k3*x(3);
dx = dx(:);

end