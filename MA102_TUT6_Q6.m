% Given matrices A and B of the same size
A = rand(3); % Example matrix A
B = rand(3); % Example matrix B

% Concatenate A and B column-wise
col_A = colspace(sym(A));
col_B = colspace(sym(B));
disp(col_A);
disp(col_B);
disp([col_A col_B]);
AB_concat = [A B];

% Compute the reduced row echelon form (RREF)
rref_AB_concat = rref(AB_concat);

% Extract pivot columns
pivot_cols = rref_AB_concat(:, any(rref_AB_concat, 1));

% Basis for Col(A) + Col(B)
basis_col_sum = pivot_cols(:, 1:size(A,2)); % Extract columns corresponding to A

% Display basis for Col(A) + Col(B)
disp('Basis for Col(A) + Col(B):');
disp(basis_col_sum);
