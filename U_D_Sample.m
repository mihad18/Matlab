%Run A Program to Generate the Delayed Unit Sample Sequence s(n) with a 
%delay of 11 sample and display it.
%Generation of a Unit Sample Sequence
clf;
%Generate a vector from -10 t0 20
n=-10:20;
%Generation of a Unit Sample Sequence
s=[zeros(1,21) 1 zeros(1,9)];
%Plot The Unit Sample Sequence
stem(n,s,'r');
xlabel('Time Index n');
ylabel('Amplitude');
title('Unit Delayed Sample Sequence')
axis([-10 20 0 1.2]);