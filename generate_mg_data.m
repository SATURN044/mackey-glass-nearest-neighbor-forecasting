% Script to generate Mackey-Glass data
% Parameters based on common benchmarks
clc; clear; close all;

tau = 17;
beta = 0.2;
gamma = 0.1;
n = 10;
dt = 1;
N = 1200;

x = 1.2 * ones(N + tau, 1); 

for t = tau : (N + tau - 1)
    x(t+1) = x(t) + (beta * x(t-tau+1) / (1 + x(t-tau+1)^n) - gamma * x(t)) * dt;
end

mgdata = x(tau:end);
save('mgdata_generated.mat', 'mgdata');
fprintf('Data generated and saved to mgdata_generated.mat\n');
