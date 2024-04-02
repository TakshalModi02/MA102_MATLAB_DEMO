% Given matrix A
A = [5, -5; 1, 1];

% Find eigenvalues and eigenvectors of A
[V, D] = eig(A);

% D is the diagonal matrix of eigenvalues, and V is the matrix of eigenvectors
% We want to find P and C such that A = PCP^-1
% Since D is diagonal, C = D
C = D;

% P is the matrix of eigenvectors V
P = V;

% Compute the inverse of P
P_inv = inv(P);

% Display P, C, and P^-1
disp('Matrix P:');
disp(P);
disp('Matrix C:');
disp(C);
disp('Inverse of matrix P:');
disp(P_inv);

% Verify A = PCP^-1
verification = P * C * P_inv;
disp('Verification (A = PCP^-1):');
disp(verification);
