function C = gen_matx_matx(A,B)
    tic;
    pool = gcp('nocreate');
    if isempty(pool)
        parpool(8);
    end
    n = size(A);
    C = zeros(n);
    for i=1:n
        for j = 1:n
            for k = 1:n
                C(i,j) = C(i,j) + A(i,k)*B(k,j);
            end
        end
    end
toc;
end