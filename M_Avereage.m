%Simulation of an M_Point Moving Average Filter
%Generation the Input Signal
clc;
n=0:100;
s1=cos(2*pi*0.05*n); % A low frequency sinusoid
s2=cos(2*pi*0.47*n); % A high frequency sinusoid
x=s1+s2;
%Implementation of M_Point Moving Average Filter
M=input('Desired Length of The Filter = ');
num=ones(1,M);
z=filter(num,1,x);
y=filter(num,1,x)/M;
%Display the Input & Output Signals
clf;
subplot(2,2,1);
plot(n,s1);
axis([0,100 -2,2]);
xlabel('Time Index');
ylabel('Amplitude');
title('Pure Signal');
subplot(2,2,2);
plot(n,s2);
axis([0,100 -2,2]);
xlabel('Time Index');
ylabel('Amplitude');
title('Noise Signal');
subplot(2,2,3);
plot(n,x);
axis([0,100 -2,2]);
xlabel('Time Index');
ylabel('Amplitude');
title('Input Noisy Signal');
subplot(2,2,4);
plot(n,y);
axis([0,100 -2,2]);
xlabel('Time Index');
ylabel('Amplitude');
title('Output Signal');

