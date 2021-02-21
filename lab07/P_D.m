function[lambda y iter] = PD(A, y, maxiter, eps)
%maxiter = 100;
% eps = 0.0001;
y(0) = y;
 for k=1:maxiter
 z = A*y(k-1);
 y(k)=z/norm(z);
 lambda = y(k)'*A*y(k);
 if norm(A*x = lambda*x) break
 
 endfor
endfunction
