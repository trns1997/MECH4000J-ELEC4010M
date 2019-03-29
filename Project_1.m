%% Project 1
clc, clear all

%% Forward Kinematics
% fwd_kin(angle_joint_1, angle_joint_2, angle_joint_3, angle_joint_4, ...
%                  angle_joint_5, angle_joint_6, angle_joint_7, plot_color)
figure(1);
fwd_kin(0,0,0,0,0,0,0, 'r');
hold on;

%% Point Cloud
figure(2);
tic;
p = p_cloud(10); % p_cloud(vector_spacing)
toc;
%% Inverse Kinematics
% inv_kin(x_pos, y_pos, z_pos, pre-calculated point cloud or [], ...
%                                               vector_spacing, plot_color)
figure(1);
tic;
pl = inv_kin(1176, 0, 191.4, p,  10, 'r');
toc;
%% Write MA INITIALS BITCH ASS BAXTER
% wrt_init(point_spacing, pre-calculated point cloud (recommended) or [])
wrt_init(5, p);
