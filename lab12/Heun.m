function y = Heun(a, b, n, y0, f)

h = (b-a)/n;
y = zeros(n+1,1);
y(1) = y0;
x = a; 

for i = 1 : n
 x1=x+2/3*h;
 y1=y(i) + 2/3* h * f(x, y(i));
y(i+1) = y(i)+h/4 * f(x, y(i)) + 3*h/4 * f(x1, y1);
x = x+ h ;
endfor
endfunction