%Run A Program to Gnerate the Unit Step Sequence u(n) and display it.
%Generation of a Unit Sample Sequence
clf;
%Generate a vector from -10 to 20
n=-10:20;
%Generation of a Unit Sample Sequence
u=[zeros(1,10) ones(1,21)];
%Plot The Unit Sample Sequence
stem(n,u,'g');
xlabel('Time Index n');
ylabel('Amplitude');
title('Unit Step Sequence')
axis([-10 20 0 1.2]);
legend('U[n]');
