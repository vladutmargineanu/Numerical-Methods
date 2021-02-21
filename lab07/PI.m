function[lambda y] = PI(A, y, maxiter, eps,lambda)

 for k=1:maxiter
   z=inv(A-lambda*eye(4))*y;
   y = z/norm(z);
   lambda = y' * A * y;
  
  if norm(A*y- lambda*y) < eps
   break
  endif
 endfor
endfunction