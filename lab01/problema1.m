function problema1()
  %numefis = input('Deschide fisier: ', 's') ;
  fid = fopen(numefis, 'w')
  disp(fid);
  x = [0 : 0.1 : 1]
  disp(x);
  y = 2 * x + 1;
  disp(y)
  save valori.txt y;
  endfunction