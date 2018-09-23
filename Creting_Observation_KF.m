%% Try creating observations for kalman filter
% Creating data with gaussian noise for future kalman filter implementation
%% Initialiaze 
close; clc
global n_switch std_dev %Control on/off of noise by 1/0.
rng('default'); %Generates repeatable values for randn function   
n_switch = 1; %Control Noise addition by setting 1/0
std_dev = 2; %Standard Deviation Parameter Control

%% Printing Code Execution Date & time
disp('Running Creating_Observation_KF ...');
Dtimes = datetime('now','TimeZone','local','Format','d-MMM-y HH:mm:ss Z');
disp(['Code Executed on: ' char(Dtimes)] );

%% Create Data
x = -10 : 0.1 :10;
y = 2*x;
z = y + n_switch*randn(size(y))*std_dev;
plot(z)

%% 
disp('Plots Created ...');
disp('Execution Completed Successfully ');