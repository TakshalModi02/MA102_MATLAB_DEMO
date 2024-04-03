% Define the range of values for x1, x2, and x3
[x1, x2, x3] = meshgrid(-5:0.1:5, -5:0.1:5, -5:0.1:5);

% Define the planes
plane1 = 5*x1 - x2 + 2*x3 - 1;
plane2 = -2*x1 + 6*x2 + 9*x3;

% Create a figure
figure;

% Give any value of intersection point and plot in Matlab
intersection_point_x1 = 1; 
intersection_point_x2 = 2;
intersection_point_x3 = 3;

scatter3(intersection_point_x1, intersection_point_x2, intersection_point_x3, 'r', 'filled');
hold on;

% Plot plane 1
patch(isosurface(x1, x2, x3, plane1, 0), 'FaceColor', 'blue', 'EdgeColor', 'none');

% Plot plane 2
patch(isosurface(x1, x2, x3, plane2, 0), 'FaceColor', 'green', 'EdgeColor', 'none');

% Adjust figure settings
title('Intersection of Planes');
xlabel('x1');
ylabel('x2');
zlabel('x3');
grid on;
legend('Intersection Point', 'Plane 1', 'Plane 2');

hold off;