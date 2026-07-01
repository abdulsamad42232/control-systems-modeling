clear all;
close all;
clc;

X0=[0;0;0;0];
[t,X]=ode45('@func',[0 800],X0);
figure;

subplot(2,1,1)
plot(t,X(:,1));
hold;
plot(t,X(:,2),'r');
xlabel('Time(t)');
ylabel('Position xb/Speed Vb');
title('Mass spring system');
legend('xb','Vb');
grid;

subplot(2,1,2)
plot(t,X(:,3));
hold;
plot(t,X(:,4),'r');
xlabel('Time(t)');
ylabel('Position xa/Speed Va');
title('Mass spring system');
legend('xa','Va');
grid;
