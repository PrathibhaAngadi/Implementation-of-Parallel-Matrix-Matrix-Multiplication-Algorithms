function C = strassen_without(A, B)
    tic;
    % Partition the matrices into quadrants
    [A11, A12, A21, A22] = matrix_quad1(A);
    [B11, B12, B21, B22] = matrix_quad1(B);
    
    % Compute the Strassen's equations
    C = compute1(A11, A12, A21, A22, B11, B12, B21, B22);
    toc;
end