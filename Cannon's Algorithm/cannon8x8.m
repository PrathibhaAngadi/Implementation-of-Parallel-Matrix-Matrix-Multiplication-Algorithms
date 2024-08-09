function C=cannon8x8(A,B)
tic;
    n=size(A);
    for i = 1:size(A, 1)
        a1(i, :) = circshift(A(i, :), -(i-1));
        b1(:, i) = circshift(B(:, i), -(i-1));
    end
     
    for i = 1:size(A, 1)
        a2(i, :) = circshift(a1(i, :),  -1);
        a3(i, :) = circshift(a2(i, :),  -1);
        a4(i, :) = circshift(a3(i, :),  -1);
        a5(i, :) = circshift(a4(i, :),  -1);
        a6(i, :) = circshift(a5(i, :),  -1);
        a7(i, :) = circshift(a6(i, :),  -1);
        a8(i, :) = circshift(a7(i, :),  -1);
    end
    
    for j = 1:size(B, 2)
        b2(:, j) = circshift(b1(:, j), -1);
        b3(:, j) = circshift(b2(:, j), -1);
        b4(:, j) = circshift(b3(:, j), -1);
        b5(:, j) = circshift(b4(:, j), -1);
        b6(:, j) = circshift(b5(:, j), -1);
        b7(:, j) = circshift(b6(:, j), -1);
        b8(:, j) = circshift(b7(:, j), -1);
    end
    
    c1=a1.*b1;
    c2=a2.*b2;
    c3=a3.*b3;
    c4=a4.*b4;
    c5=a5.*b5;
    c6=a6.*b6;
    c7=a7.*b7;
    c8=a8.*b8;

    C=c1+c2+c3+c4+c5+c6+c7+c8;
    toc;
end