% Define the range of values for x1, x2, and x3
[x1, x2, x3] = meshgrid(-5:0.1:5, -5:0.1:5, -5:0.1:5);

% Define the planes
plane1 = 5*x1 - x2 + 2*x3 - 1;
plane2 = -2*x1 +6*x2+9*x3;

% Create a figure
figure;

% Plot the intersection point
scatter3(intersection_point_x1, intersection_point_x2, intersection_point_x3, 'r', 'filled');
hold on;

% Plot the planes using the mesh function
mesh(x1(:,:,1), x2(:,:,1), plane1(:,:,1), 'FaceAlpha', 0.5, 'EdgeColor', 'b');
mesh(x1(:,:,1), x2(:,:,1), plane2(:,:,1), 'FaceAlpha', 0.5, 'EdgeColor', 'g');

% Adjust figure settings
title('Intersection of Planes');
xlabel('x1');
ylabel('x2');
zlabel('x3');
grid on;
legend('Intersection Point', 'Plane 1', 'Plane 2');

hold off;
