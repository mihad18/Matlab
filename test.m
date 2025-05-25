%{
clc;
clear all;
n= -10:20;
u_step=[zeros(1,10) ones(1,21)];
subplot(4,1,1);
stem(n,u_step,'b');
xlabel('Time');
ylabel('Amplitude');
title('Unit Step Signal');
axis([-10 20 0 2]);
legend('U[n]');
grid on;



u_delayed=[zeros(1,21) ones(1,10)];
subplot(4,1,2);
stem(n,u_delayed,'k');
xlabel('Time');
ylabel('Amplitude');
title('Delayed Unit Step');
axis([-10 20 0 2]);
legend('U[n-10]');
grid on;


u_Sample=[zeros(1,10) 1 zeros(1,20)];
subplot(4,1,3);
stem(n,u_Sample,'r');
xlabel('Time Index n');
ylabel('Amplitude');
title('Unit Sample Sequence');
axis([-10 20 0 1.2]);
legend('U[u_Sample]');
grid on;

u_SampleD=[zeros(1,5) 1 zeros(1,25)];
subplot(4,1,4);
stem(n,u_SampleD,'g');
xlabel('Time Index n');
ylabel('Amplitude');
title('Unit Sample Delayed Sequence');
axis([-10 20 0 1.2]);
legend('U[u_Sample_D]');
grid on;



clc;
clear all;
clf;
h=[3 2 1 -2 1 0 -4 0 3];
x=[1 -2 3 -4 3 2 1];
y=conv(h,x);
n= 0:14;
subplot(2,1,1);
stem(n,y,'r');
xlabel('Time');
ylabel('Amplitude');
title('Convolution');

x1=[x ones(1,8)];
y1=filter(h,1,x1);
subplot(2,1,2);
stem(n,y1,'g');
xlabel('Time');
ylabel('Amplitude');
title('Filter');
%}

clf;
clear all;
h=[3 2 1 -2 1 0 -4 0 3];
x=[1 -2 3 -4 3 2 1];
y=conv(h,x);
n= 0:14;
subplot(2,1,1);
stem(n,y);
xlabel('time index n');
ylabel('amplitude')
title('output obtained by convolution');

x1=[x ones(1,8)];
y1=filter(h,1,x1);
subplot(2,1,2);
stem(n,y1);
xlabel('time index n');
ylabel('amplitude');
title('output obtained by filter');






