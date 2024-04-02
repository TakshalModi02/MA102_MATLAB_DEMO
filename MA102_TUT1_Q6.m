% Define block matrix dimensions
n = 2; % Size of sub-matrices A, B, C, D

% Generate random matrices for A, B, C, D
A = rand(n);
B = rand(n);
C = rand(n);
D = rand(n);

% Create block matrix
M = [A B; C D];

%% Using inv command
tic;
inv_M_builtin = inv(M);
t_builtin = toc;
disp(['Time taken by inv: ', num2str(t_builtin), ' seconds']);
disp(inv_M_builtin);
%% Using formula with block partitioning
tic;
sub_block = inv(D-C*inv(A)*B);
% Define sub-blocks for inverse
inv_A11 = inv(A)*(eye(n)+B*sub_block*C*inv(A));
inv_A12 = -inv(A)*B*sub_block;
inv_A21 = -sub_block*C*inv(A);
inv_A22 = sub_block;

% Assemble block inverse
inv_M_formula = [inv_A11 inv_A12; inv_A21 inv_A22];

t_formula = toc;
disp(['Time taken by formula: ', num2str(t_formula), ' seconds']);
disp(inv_M_formula);
% Verify results (optional)
disp('Difference between inverses (should be close to zero):');
disp(norm(inv_M_builtin - inv_M_formula));