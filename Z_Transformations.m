clc; 
clear; 
syms n z

%% Example 1: Compute Z-Transform of a given sequence
x = (0.5)^n;  % Define the discrete-time sequence
X_z = ztrans(x, n, z); % Compute Z-Transform
disp('Z-Transform of x[n] = (0.5)^n is:');
pretty(X_z)

%% Example 2: Compute the inverse Z-Transform
X_z_inverse = iztrans(X_z, z, n); % Compute Inverse Z-Transform
disp('Inverse Z-Transform of the obtained function:');
pretty(X_z_inverse)

%% Example 3: Compute Z-Transform of a unit step function u[n]
u = heaviside(n); % Unit step function u[n]
U_z = ztrans(u, n, z);
disp('Z-Transform of unit step function u[n]:');
pretty(U_z)

%% Example 4: Compute Z-Transform of a given function x[n] = n
x2 = n; % Define sequence x[n] = n
X2_z = ztrans(x2, n, z);
disp('Z-Transform of x[n] = n is:');
pretty(X2_z)

%% Example 5: Compute Z-Transform of a Sinusoidal Signal
x3 = sin(n);
X3_z = ztrans(x3, n, z);
disp('Z-Transform of x[n] = sin(n) is:');
pretty(X3_z)
