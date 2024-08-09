function C = compute1(A11, A12, A21, A22, B11, B12, B21, B22)
    % Compute the Strassen's products
            P1 = A11 * (B12 - B22);
            P2 = (A11 + A12) * B22;
            P3 = (A21 + A22) * B11;
            P4 = A22 * (B21 - B11);
            P5 = (A11 + A22) * (B11 + B22);
            P6 = (A12 - A22) * (B21 + B22);
            P7 = (A11 - A21) * (B11 + B12);

    % Compute the result submatrices
    C11 = P5 + P4 - P2 + P6;
    C12 = P1 + P2;
    C21 = P3 + P4;
    C22 = P5 + P1 - P3 - P7;

    % Combine the result submatrices into the final matrix
    C = [C11 C12; C21 C22];
end