M = magic(3);
for i = 1 : 3,
   for j = 1 : 3,
       if (M(i,j) > 4),
           M(i,j) = -M(i,j);
       endif
   endfor
endfor	