function I= SimpsonC(n, a, b, f1)
% n = ordinul metodei
% f1 = funcţia de integrat
% Ieşiri: valoarea integralei definite
  h =(b-a) / (2*n);
  s1 = 0;
  s2 = 0;
  for i = 1 : n
    s1 = s1 + f1(a+(2*i-1)*h);
  end
  for i = 1 : n-1
    s2 = s2 + f1(a+2*i*h);
  end
  I = h*(f1(a) + f1(b) + 4*s1 + 2*s2)/3;
  % Incercare cu vectorizare (imi da eroare pentru un operator)
  % h=(b-a)/n;
  % xi=a:h:b;
  % I= h*(f1(xi(1))+2*sum(f1(xi(3:2:end-2)))+4*sum(f(xi(2:2:end)))+f1(xi(end)))/3;
endfunction

SimpsonC(0, 1, 100, @f1)