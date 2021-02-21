function[lambda y iter] = PD(A, y, maxiter, eps)
%maxiter = 100;
% eps = 0.0001;

 for k=1:maxiter
 z = A*y;
 y=z/norm(z);
 lambda = y'*A*y;
  if norm(A*y- lambda*y) < eps
   break
  endif
 endfor
endfunction
