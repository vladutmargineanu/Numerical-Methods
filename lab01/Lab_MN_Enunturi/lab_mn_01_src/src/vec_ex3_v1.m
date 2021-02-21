V = 'Sunt    multe   spatii   albe   in acest   text.';
ind = find(filter([1 1], 2, V==' ') == 1);
V(ind) = []