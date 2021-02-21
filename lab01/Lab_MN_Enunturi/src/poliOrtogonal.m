function P = poliOrtogonal(nume_polinom, n)
  
  if strcmp(nume_polinom, 'legendre')
    P0 = [1];
    P1 = [1 0];
    C0 = @(n)([-n/(n+1)]);
    C1 = @(n)([(2*n+1)/(n+1) 0]);
  endif
  
  if strcmp(nume_polinom,  'cebasev')
    P0 = [1];
    P1 = [1 0];
    C0 = @(n)([-1]);
    C1 = @(n)([2 0]);
  endif
  
  if strcmp(nume_polinom, 'laguerre')
    P0 = [1];
    P1 = [-1 1];
    C0 = @(n)([-n^2]);
    C1 = @(n)([-1 2*n+1]);
  endif
  
  if strcmp(nume_polinom,  'hermite')
    P0 = [1];
    P1 = [2 0];
    C0 = @(n)([-2*n]);
    C1 = @(n)([2 0]);
  endif
  
  P = poliOrtogonalGeneral(n, P0, P1, C0, C1);
endfunction