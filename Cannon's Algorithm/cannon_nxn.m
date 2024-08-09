function C = cannon_nxn(A, B)
    tic;
    % Initialize matrix C with zeros
    n = size(A, 1);
    C = zeros(n);

    % Perform initial alignment of matrices A and B
    for i = 0:n-1
        A(i+1, :) = circshift(A(i+1, :), [0, -i]);
        B(:, i+1) = circshift(B(:, i+1), [-i, 0]);
    end

    % Main computation loop
    for k = 0:n-1
        C = C + A .* B; % Element-wise multiplication and accumulation

        % Circular shift rows and columns after each multiplication step
        A = circshift(A, [0, -1]);
        B = circshift(B, [-1, 0]);
    end
    toc;
end
