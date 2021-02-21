function I = Simpson(a, b, f1)
   h = (b - a) / 2;
  I = h/3*( f1(a) + f1(b) + 4*f1((a+b)/2)); 

   % h=(b-a)/N; 
    %xi=a:h:b;
    %I= h/3*(f1(xi(1))+2*sum(f1(xi(3:2:end-2)))+4*sum(f1(xi(2:2:end)))+f1(xi(end)));

endfunction
