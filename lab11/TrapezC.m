function I = TrapezC(a, b, n, f1)
% n = ordinul metodei
% f1 = funcţia de integrat
% Ieşiri:valoare integrala definita
  h = (b-a) / n;
  s = 0;
  for i = 1 : n-1
   s = s + f1(a+i*h);
  end
  I = h*(f1(a) + f1(b) + 2*s) / 2;
  
 % Incercare cu vectorizare (eroare la un operator)
 % h=(b-a)/n;
 % xi=a:h:b;
 % I= h*(f1(xi(1))+2*sum(f1(xi(2:2:end)))+f1(xi(end)));
  
endfunction

 TrapezC(0, 1, 100, @f1)