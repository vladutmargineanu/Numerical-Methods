function [x] = SST(A, b)
  [n n] = size(A);
  x(n) = b(n)/A(n,n);
  for i = n: -1 : 1
    s = 0;
    for j = i+1 : n
      s = s + A(i,j)*x(j);
    endfor
    x(i) = (b(i)-s)/A(i,i);
   endfor
  disp('x=');
  disp(x);
  endfunction

function [x] = SIT(A, b)
  [n n] = size(A);
x(1) = b(1)/A(1,1);
for i = 1 : n
  s = 0;
   for j = 1 : i-1
       s = s + A(i,j)*x(j);
   endfor  
   x(i) = (b(i) -s)/A(i,i);
  endfor
  disp('x=');
  disp(x);
endfunction

A = [1 0 0; 1 1 0; 2 1 1];
crout(A);
[L U] = crout(A);
SIT(L, b);

A = [1 2 1; 0 1 1; 0 0 1];
[L U] = crout(A)
SST(U, b);
  