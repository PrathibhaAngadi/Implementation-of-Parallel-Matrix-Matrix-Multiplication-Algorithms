function [A11, A12, A21, A22] = matrix_quad1(A)
    if size(A)==[2,2]
        return
    end
    [m, n] = size(A);
    m2 = m / 2;
    n2 = n / 2;

        A11 = A(1:m2, 1:n2);
        A12 = A(1:m2, n2+1:end);
        A21 = A(m2+1:end, 1:n2);
        A22 = A(m2+1:end, n2+1:end);

end