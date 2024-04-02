% Define the matrix A (example)
A = ; % You can replace this with your own matrix

% Create a grid of points in the input space
[X, Y] = meshgrid(-5:0.5:5, -5:0.5:5); % Define the range and spacing of points

% Flatten the grid into vectors
X_vec = X(:);
Y_vec = Y(:);

% Create a matrix containing the coordinates of all points in the input space
input_points = [X_vec Y_vec];

% Apply the linear transformation to the input points
output_points = (A * input_points')';

% Plot the original points and their images after the transformation
figure;
scatter(input_points(:,1), input_points(:,2), 'b', 'filled');
hold on;
scatter(output_points(:,1), output_points(:,2), 'r', 'filled');
axis equal;
title('Linear Transformation: x'' = Ax');
legend('Original Points', 'Transformed Points');
