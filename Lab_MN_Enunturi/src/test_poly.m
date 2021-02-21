function test_poly
    %%% Coeficientii polinomului p
    p = [ 2 1 -1]
    %%% Afisarea polinomului
    polyout(p, 'x')
    %%% Coeficientii polinomului q
    q = [ 1 2]   
    %%% Afisarea polinomului
    polyout(q, 'x')
    %%% Produsul dintre p si q
    r = conv(p,q)
    %%% Afisarea rezultatului
    polyout(r, 'x')
endfunction
