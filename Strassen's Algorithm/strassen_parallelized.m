function C = strassen_final(A, B)
    tic;
    % Partition the matrices into quadrants
    [A11, A12, A21, A22] = matrix_quad(A);
    [B11, B12, B21, B22] = matrix_quad(B);
    
    % Compute the Strassen's equations
    C = compute(A11, A12, A21, A22, B11, B12, B21, B22);
    toc;
end