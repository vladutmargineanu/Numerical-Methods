x = -2 : 0.5 : 2;
for i = 1 : length(x)
    if x(i)>=0
        s(i) = sqrt(x(i));
    else
        s(i) = 0;
    endif
endfor