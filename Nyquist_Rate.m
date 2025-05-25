%CT signal Generation 
f=2;
T=1/f;
t=0:0.001:f*T;
y=sin(2*pi*f*t);
subplot(3,1,1);
plot(t,y);
xlabel('Time t');
ylabel('Amplitude');
title('Input Signal with f=2Hz');
%Sampling
Fs=2;
Ts=1/Fs;
n=0:Ts:f*T;
y_sampled=sin(2*pi*f*n);
subplot(3,1,2);
stem(n,y_sampled,'fill');
xlabel('Time Index n');
ylabel('Amplitude');
title('Sampled Signal with f=2Hz');
t_new=linspace(0,f*T,1001);
% t_new=linspace(0,2,25);
y_reconstruct=interp1(n,y_sampled,t_new,'spline');
subplot(3,1,3);
plot(n,y_sampled,'o', t_new,y_reconstruct,'-','linewidth',1.5);
xlabel('Time Index n');
ylabel('Amplitude');
title('Reconstructed Signal with f=2Hz');







