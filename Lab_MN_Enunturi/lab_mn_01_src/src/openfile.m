fid = 0;
while fid < 1
    numefis = input('Deschide fisier: ', 's') ;
    [fid, mesaj] = fopen(numefis, 'r');
    if fid == -1
        disp(mesaj);
    endif
endwhile
