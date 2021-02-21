function pb3()
  
  fid = fopen("matrice.txt" , 'r');
  disp(fid);
  
  A = fscanf(fid, "%f");
  s1 = sum(diag(A));
  s2 = sum(diag(flipud(A)))
  s3 = sum(A)
  s4 = sum(A')
  contor = 0;
  for i = [1:2]
    if (s1 == s2 && s1 == s3(1, i) && s2 == s4(1, i))
      contor ++;
    endif
  endfor
  if (contor == 2)
    disp("Matricea e magica");
  else
    disp("Matricea nu e magica");
  endif
  
endfunction
