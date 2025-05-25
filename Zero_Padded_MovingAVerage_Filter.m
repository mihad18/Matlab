clc; clear; close all;

% Generate a Noisy Signal
fs = 100;  % Sampling frequency (Hz)
t = 0:1/fs:1;  % Time vector (1 second duration)
signal = sin(2*pi*5*t) + 0.5*randn(size(t)); % 5 Hz sine wave with noise

% Define Moving Average Window Size
window_size = 10;  % Number of samples for averaging

% Zero-Pad the Signal at Both Ends
padded_signal = [zeros(1, floor(window_size/2)), signal, zeros(1, floor(window_size/2))];

% Apply Moving Average Filter Using movmean()
filtered_signal_padded = movmean(padded_signal, window_size);

% Remove Extra Padded Values to Retain Original Length
filtered_signal = filtered_signal_padded(floor(window_size/2) + 1:end - floor(window_size/2));

% Plot the Original and Filtered Signal
figure;
subplot(2,1,1);
plot(t, signal, 'r'); hold on;
title('Original Noisy Signal');
xlabel('Time (s)'); ylabel('Amplitude');
grid on;

subplot(2,1,2);
plot(t, filtered_signal, 'b'); hold on;
title(['Filtered Signal with Moving Average (Window = ', num2str(window_size), ')']);
xlabel('Time (s)'); ylabel('Amplitude');
grid on;
