Fs=1000; %Sampling Frequency
Ts=1/Fs; %Sampling Interval
dt=0:Ts:2-Ts; %Time Duration 2 second
%Analog Signal Frequencies
f1=10;
f2=30;
f3=70;
%Analog Signals
y1=10*sin(2*pi*f1*dt);
y2=10*sin(2*pi*f2*dt);
y3=10*sin(2*pi*f3*dt);
subplot(4,1,1);
plot(dt,y1,'r');
xlabel('Time Index');
ylabel('Amplitude');
title('Signal For 10Hz');
subplot(4,1,2);
plot(dt,y2,'r');
xlabel('Time Index');
ylabel('Amplitude');
title('Signal For 30Hz');
subplot(4,1,3);
plot(dt,y3,'r');
xlabel('Time Index');
ylabel('Amplitude');
title('Signal For 70Hz');
%%
%Now we combine the three signals to see the condition of new signal
y4=y1+y2+y3;
subplot(4,1,4);
plot(dt,y4,'r');
xlabel('Time Index');
ylabel('Amplitude');
title('Signal For 10Hz,30Hz & 70Hz');
%%
%Now we need to do FFT to recover the original frequency by drawing
%frequency Spectrum
%To do FFT we need to find out the length of the signal y4
nfft=length(y4);
%Now to get the good resolution (1 Byte (B) = 8 bits, 1 Kilobyte (KB) = 1024 Bytes, 1 Megabyte (MB) = 1024 KB = 1,048,576 Bytes)we should to do the nextpow operation
nfft2=2^nextpow2(nfft);
ff=fft(y4,nfft2);
plot(abs(ff));
%%
%Now to see the half of the spectrum due the symmetry we half the length
fff=ff(1:nfft2/2);
plot(abs(fff))
%%
%Now to label the x axis to see the exact frequency we need to do the one
%line more
xfft1=Fs*(0:nfft2/2)/nfft2;
%But in the upper xfft1 there is the 1025 samples, but we need 1024 samples
xfft=Fs*(0:nfft2/2-1)/nfft2;
plot(xfft,abs(fff));
%%
%To normalize the Amplitude
fff=10*(fff/max(fff));
plot(xfft,abs(fff));
