%Convolution of FIR System
clf;
h=[3 2 1 -2 1 0 -4 0 3]; % Impulse Response
x=[1 -2 3 -4 3 2 1];     % Input Sequence
y=conv(h,x);
n=0:14;
subplot(2,1,1);
stem(n,y,'r');
xlabel('Time Index n');
ylabel('Ampitude');
title('Output Obtained by Convolution');
x1=[x ones(1,8)]
y1=filter(h,1,x1)
subplot(2,1,2);
stem(n,y1);
xlabel('Time Index n');
ylabel('Ampitude');
title('Output Obtained by Filter');
