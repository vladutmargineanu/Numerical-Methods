function P = poliOrtogonalGeneral(n, P0, P1, C1, C2)
  %Pn+1 = C1(n)*Pn + C2(n)*Pn-1
  %Valori initiale: P0, P1
  %Iesire: Pn
  
  %Cazuri de baza
  if n == 0
    P = P0;
  endif
  
  if n == 1
    P = P1;
  endif
  
  %Ultimii 2 termeni ai recurentei sunt pastrati in P0 si P1
  for i=2:n
    Paux1 = conv(P0, C1(i));
    Paux2 = conv(P1, C2(i));
    
    m = length(Paux1);
    n = length(Paux2);
    r = max(m, n);
    
    Paux1(r-m+1:r) = Paux1(1:m);
    Paux1(1:r-m) = zeros(1,r-m);

    Paux2(r-n+1:r) = Paux2(1:n);
    Paux2(1:r-n) = zeros(1,r-n);
    
    Paux = Paux1 + Paux2;
    
    P0 = P1;
    P1 = Paux;
  endfor
  
  P = P1;
endfunction