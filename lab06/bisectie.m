fraction sol = bisectie(a, b, tol, p)
 y = tol;
 while y >= tol
   m = (a + b) / 2;
   if polyval (p, a) * polyval(p, n) == 0
     sol = m;
     break;
     