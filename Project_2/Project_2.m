%% Project 2
clear all, clc;

%% User Input
v = input('Input vertices eg. [0, 0; 600, 100; 900, 300; 300, 200]: ');
u = input('Friction Coefficient from 0 < u < 10^17: ');
a = input('Input line segment of choice 1 (from 1 to number of vertices) and a point on that line segment(from 2 to 8) eg. [1,8]: ');
b = input('Input line segment of choice 2(from 1 to number of vertices) and a point on that line segment(from 2 to 8) eg. [3,8]: ');

%% Define vertices for the polygon
% v = [0, 0; 600, 100; 900, 300; 300, 200];

%% Define friction coef u
% u = 0.5;
ang = rad2deg(atan(u));

%% Plot polygon on x-y plane
polygon(v); % polygon(vertices)
hold on

%% Determine if the 2 contact points are in force closure and plot the robot configuration
%[x_coordinate_line_1, y_coordinate_line_1, x_coordinate_line_2, y_coordinate_line_2, Force_Closure_Flag] 
%                           = det_fr_cls(vertices, line_choice_1, line_choice_2, point_on_line_1, point_on_line_1, cone_angle);
[x0, y0, x1, y1, fc] = det_fr_cls(v, a(1), b(1), a(2), b(2), ang);

%plt_rbt(vertices, x_coordinate_line_1, y_coordinate_line_1, x_coordinate_line_2, y_coordinate_line_2, Force_Closure_Flag);
plt_rbt(v, x1, y1, x0, y0, fc);