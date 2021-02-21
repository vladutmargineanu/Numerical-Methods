function [s] = pb2_while(n)
   n = input('Introduceţi variabila:');
  s = 0;
  x = [1 : 2 : n]
  i = 1;
    while (x(i) < n)
      
     s = s + x(i);
     i = i + 1;
   
    endwhile
  disp('Suma este:');
  disp(s);

endfunction

