function x = SOR(A, b, w, x0, tol, max_iter)
  n = length(b);
  x = x0;
  
  for step = 1 : max_iter
    for i = 1 : n
      x(i) = b(i);
      for j = 1 : i -1
         x(i) = x(i) - A(i,j) * x(j);
      endfor
      for j = i + 1 : n
        x(i) = x(i) - A(i,j) * x0(j);
      endfor
      x(i) = x(i) / A(i,i);
    endfor
    x = x .* w + x0 .* (1 - w);
    %disp(steps);
    if norm(x - x0) < tol
      break   %daca am ajuns la 2 sol echivalente una dupa alta, ne oprim
    endif
    x0 = x;
  endfor
endfunction

A = [0.5 0.125; 0.125 0.25]
b = [1 1]
w = 0.5
x0 = [0 0]
tol = 0.000001
max_iter = 100
SOR(A,b,w,x0,tol,max_iter)