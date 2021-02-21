function [pozitie] = pb4(file)
  file = input('Deschide fisier: ', 's') ;
  fid = fopen(file, 'r');
  disp(fid);
 
  stare = fseek(fid, 0, 'eof');
   pozitie = ftell(fid);
   disp("Dimensiunea este:");
   disp(pozitie);
   fclose(fid);
 endfunction
 
  