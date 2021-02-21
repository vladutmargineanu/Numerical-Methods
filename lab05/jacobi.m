N = diag(diag(A)); %face o matr cu elem de pe diag pr ale lui A
P = -(A - N);
Gj = inv(N)*P; % met Jacobi
