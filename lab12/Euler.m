function r = Euler(x0, h, n, y0, f)

r = zeros(n+1, 1);
r(1) = y0;
for i = 2 : n + 1
x = x0 + i * h;
r(i) =r(i - 1) +h * f(x, r(i - 1));
endfor
endfunction