clear;
close all;
clc;
% Set parameters
% initial conditions:[E] 0 = 1 ?M, [S] 0 = 10 ?M, [ES] 0 = 0?M, [P] 0 = 0?M
y0=[1 10 0 0];  
h=0.001;   % step
t0=0;      % start time
t1=10;     % terminal time
[n,y,t] = RK4(@Q2_Enzyme_Kinetics,y0,h,t0,t1);

% numeric value
disp(y(:,mod(t,1)==0));

figure(1);clf;
plot(t,y(1,:),'-.',t,y(2,:),'-',t,y(3,:),'-.',t,y(4,:),'-');grid on;hold on;

xlabel('Time(s)','FontSize',12); 
ylabel('Concentration(\muM)', 'FontSize',12); 
legend('E','S','ES','P'); 
title(' Change of Concentration with time', 'FontSize',16);


% Q3
figure(2);clf;
% rate constants: k3=150/min=2.5/s.
k3 = 2.5;
V =k3*y(3,:); %the rate of change of the product P
plot(y(2,:),V,'r-');grid on;hold on;
xlabel('Concentration of the substrate S(\muM)');ylabel('V');[~,idx]=max(V);
plot(y(2,idx),V(idx),'o','Markersize',10);
title(" The relationship between V and S");


disp([' Maximum V is ' ,num2str(max(V))])