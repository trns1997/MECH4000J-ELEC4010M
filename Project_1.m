%% Project 1
clc, clear all

%% Forward Kinematics
figure(1);
fwd_kin(0,0,0,0,0,0,0, 'r');
hold on;

%% Point Cloud
figure(2);
tic;
p = p_cloud(10);
toc;
%% Inverse Kinematics
figure(1);
tic;
pl = inv_kin(1176, 0, 191.4, p,  10, 'r');
toc;
%% Write MA INITIALS BITCH ASS BAXTER
wrt_init(5, p);
