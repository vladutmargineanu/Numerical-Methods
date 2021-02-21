function [y] = pb5(numefis, sir)
  numefis = input('Deschide fisier: ', 's') ;
  sir = input ('NUme sir:','s');
  fid = fopen (numefis,'r+');
  disp(fid);
  nrap = 0;
  nraptot = 0;
  
  while 1
    nrap = 0;
    linie = fgetl(fid);
    if ~ischar(linie), break, end
      disp('Linia este:');
      disp(linie);
      ind = findstr(linie, sir);
        nrap ++;
        nraptot++;
        disp('Nr apar pe linie este:')
        disp(nrap);
    endwhile
    disp('Nr tuturor ap este');
    disp(nraptot);
    fclose(fid);
    
  endfunction
  