%Run A Program to Gnerate thr Unit Sample Sequence s(n) and display it.
%Generation of a Unit Sample Sequence
clf;
%Generate a vector from -10 t0 20
n=-10:20;
%Generation of a Unit Sample Sequence
s=[zeros(1,10) 1 zeros(1,20)];
%Plot The Unit Sample Sequence
stem(n,s,'r');
xlabel('Time Index n');
ylabel('Amplitude');
title('Unit Sample Sequence')
axis([-10 20 0 1.2]);
legend('S[n]');
