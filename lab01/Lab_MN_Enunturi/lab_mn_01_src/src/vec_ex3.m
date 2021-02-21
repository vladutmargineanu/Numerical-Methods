V = 'Sunt    multe   spatii   albe   in acest   text.';
len = length(V);
i = 1;
while (i<len)
    if (V(i) == ' ' & V(i+1) == ' ')
        for j = i:len-1
            V(j) = V(j+1);
        endfor
        V(len) = 0; len = len-1;
    else
        i = i+1;
    endif
endwhile
V = char(V)