function steptimespec % find time specification for step
%response of a second order system and calculates the rise
%time,
%delay time, maximum overshoot, peak time and settling time
%of a system
%whose damping ratio and natural frequency are known.
clc;
zeta=input('Enter the value of damping ratio ');
wn=input('Enter the value of Natural frequency ');
n=wn*wn;
d=[1 2*zeta*wn wn*wn];
disp('The transfer function is: ')
printsys(n,d);
t=0:0.02:6.0;
[y,x,t]=step(n,d,t);
plot(t,y);
grid on;
title('step response');
% to find maximum overshoot
for k=1:1:300;
if y(k+1)<=y(k);
% to find value of k till response keeps rising
break;
end;
end;
Oshoot=y(k)-1;
fprintf('The overshoot is: %f sec\n', Oshoot);
% to find the peak time
tp=t(k);
fprintf('the peak time is :%f sec\n',tp)
% to find the settling time
%maximum tolerance for comnsidering output to be in steady
state taken as
%2%
tol=0.02;
for k=300:-1:2;
if(abs(y(k)-y(300))>tol)
break;
end;
end;
stime=t(k);
fprintf('the settling time is :%f sec\n',stime)
%to find rise time i.e. time taken for output to rise from
10% to 90%
k=1;
while y(k)<=0.1;
k=k+1;
end
tenpercent=t(k);
while y(k)<=0.9;
k=k+1;
end
nintypercent=t(k);
rtime=nintypercent-tenpercent;
fprintf('The rise time is: %f sec \n',rtime);
format short
% to find delay time i.e. time taken to rise to 50% of step
k=1;
while y(k)<=0.5;
k=k+1;
end
dtime=t(k);
fprintf('The delay time is: %f sec\n', dtime);