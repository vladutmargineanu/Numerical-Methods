function[rs]=isGSConv(A)
N = diag(diag(A)); %face o matr cu elem de pe diag pr ale lui A
P = -(A - N);
Gj = inv(N)*P; % met Jacobi

 rs = max(abs(eig(Gj))); %eig calculeaza valorile proprii
 if sign(rs - 1) < 0 
   disp('convergent');
 else
   disp('Non-conv');
 endif
endfunction
