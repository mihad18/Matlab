clc; clear; close all;

% Define Continuous-Time Signal (Original)
fsignal = 10;  % Original signal frequency (Hz)
t = 0:0.001:0.2; % Continuous-time axis
x = cos(2*pi*fsignal*t); % Continuous signal

% Sampling at Different Rates
fs1 = 5;   % Sampling frequency < Nyquist (Aliasing occurs)
fs2 = 20;  % Sampling frequency > Nyquist (Correct Sampling)
fs3 = 10;  % Sampling at Nyquist Rate (Borderline Case)

t1 = 0:1/fs1:0.2; % Discrete-time samples (Under Sampling)
t2 = 0:1/fs2:0.2; % Discrete-time samples (Over Sampling)
t3 = 0:1/fs3:0.2; % Discrete-time samples (Nyquist Rate)

x1 = cos(2*pi*fsignal*t1);
x2 = cos(2*pi*fsignal*t2);
x3 = cos(2*pi*fsignal*t3);

% Plot Results
figure;
subplot(3,1,1);
plot(t, x, 'b'); hold on;
stem(t1, x1, 'r', 'LineWidth', 1.5);
title('Aliasing Effect: fs < 2*fsignal (Under Sampling)');
xlabel('Time (s)'); ylabel('Amplitude');
legend('Original Signal', 'Sampled Signal');
grid on;

subplot(3,1,2);
plot(t, x, 'b'); hold on;
stem(t3, x3, 'g', 'LineWidth', 1.5);
title('Nyquist Rate: fs = 2*fsignal (Critical Sampling)');
xlabel('Time (s)'); ylabel('Amplitude');
legend('Original Signal', 'Sampled Signal');
grid on;

subplot(3,1,3);
plot(t, x, 'b'); hold on;
stem(t2, x2, 'k', 'LineWidth', 1.5);
title('No Aliasing: fs > 2*fsignal (Over Sampling)');
xlabel('Time (s)'); ylabel('Amplitude');
legend('Original Signal', 'Sampled Signal');
grid on;
