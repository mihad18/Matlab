clc; 
clear; 
close all;

% Sampling frequency
Fs = 1000;  % 1000 Hz

% Cutoff frequency (Normalized)
Fc = 100;  % 100 Hz cutoff
N = 50;    % Filter order (Number of coefficients)

% Design Low-pass FIR filter using Hamming window,[Fc/(Fs/2)] is a
% normalize cutt off frequecncy
b = fir1(N, Fc/(Fs/2), 'low', hamming(N+1));

% Frequency response of the filter
fvtool(b,1); % Visualize filter response

% Generate a test signal (sum of two sinusoids)
t = 0:1/Fs:1; % 1 second time vector
x = sin(2*pi*50*t) + sin(2*pi*200*t); % 50Hz and 200Hz signals

% Apply FIR filter
y = filter(b,1,x);

% Plot results
subplot(2,1,1);
plot(t, x);
title('Original Signal (50 Hz + 200 Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
plot(t, y);
title('Filtered Signal (50 Hz preserved, 200 Hz removed)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
