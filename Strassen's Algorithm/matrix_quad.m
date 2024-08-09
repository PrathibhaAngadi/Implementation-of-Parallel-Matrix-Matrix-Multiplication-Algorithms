function [A11, A12, A21, A22] = matrix_quad(A)
    if size(A)==[2,2]
        return
    end
    [m, n] = size(A);
    m2 = m / 2;
    n2 = n / 2;

spmd(4)
    if spmdIndex ==1
        A11 = A(1:m2, 1:n2);
    elseif spmdIndex ==2
        A12 = A(1:m2, n2+1:end);
    elseif spmdIndex ==3
        A21 = A(m2+1:end, 1:n2);
    elseif spmdIndex ==4
        A22 = A(m2+1:end, n2+1:end);
    end
end
    A11=A11{1};
    A12=A12{2};
    A21=A21{3};
    A22=A22{4};
end