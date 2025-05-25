%Run A Program to Gnerate the Delayed Unit Step Sequence s(n) with a 
%delay of 11 sample and display it.
%Generation of a Unit Sample Sequence
clf;
%Generate a vector from -10 t0 20
n=-10:20;
%Generation of a Unit Sample Sequence
u=[zeros(1,21) ones(1,10)];
%Plot The Unit Sample Sequence
stem(n,u,'r');
xlabel('Time Index n');
ylabel('Amplitude');
title('Unit Delayed Sample Sequence')
axis([-10 20 0 1.2]);