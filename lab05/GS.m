function [x] = GS(A, b, x0, tol, maxiter)
n = length(b)
x = x0;
for step = 1:maxiter
  for i = 1:n
  x(i) = b(i);
  for j = 1:i-1
      x(i) = x(i) - A(i, j) * x0(j);
    endfor
    for j = i+1:n
      x(i) = x(i) - A(i, j) * x0(j);
    endfor
  x(i) = x(i) / A(i, i);
endfor
if norm(x - x0) < tol
  break
endif
x0 = x
endfor
endfunction

    