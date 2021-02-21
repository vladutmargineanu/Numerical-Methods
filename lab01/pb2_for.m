function [s] = pb2_for(n)
  s = 0;
  n = input('Introduceţi variabila:')
  for i = [1 : 2 : n-1]
    s = s + i;
  endfor
  disp('Suma cu for: ');
  disp(s);
endfunction
