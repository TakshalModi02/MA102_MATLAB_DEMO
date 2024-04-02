% Define matrix A and vector b
A = [1 1 0; 1 1 0; 1 0 1];
b = [1; 3; 8];

C = colspace(sym(A));
disp(C);

A1 = [1 1 0; 0 0 1];
N = null(A1);

disp(N);

g = A.'*A\A.'*b;
b_cap = A*g;


% Create a grid of X and Y values
[X, Z] = meshgrid(-10:10, -10:10);

% Z can be anything, let's set it to zeros


% Plot the plane X = Y
surf(X, X, Z, 'FaceAlpha', 0.5); % Adjust FaceAlpha to control transparency
hold on;
% Plot b_cap
scatter3(b_cap(1), b_cap(2), b_cap(3), 'filled', 'r', 'MarkerEdgeColor', 'k', 'LineWidth', 1.5);

% Plot b
scatter3(b(1), b(2), b(3), 'filled', 'b', 'MarkerEdgeColor', 'k', 'LineWidth', 1.5);

xlabel('X');
ylabel('Y');
zlabel('Z');
title('Plane X = Y');