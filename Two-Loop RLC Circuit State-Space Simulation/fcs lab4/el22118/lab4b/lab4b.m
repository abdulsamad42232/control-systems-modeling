clear
close
clc
X0=[0,0,0];
[t,X]=ode45('RLC',[0 500],X0);
subplot(2,2,1)
plot(t,X(:,1));
legend('i1');
grid on;
title('i1');
subplot(2,2,2)
plot(t,X(:,2),'r');
legend('i2');
grid on;
title('i2');
subplot(2,2,3)
plot(t,X(:,2),'r');
legend('iC');
grid on;
title('iC');
