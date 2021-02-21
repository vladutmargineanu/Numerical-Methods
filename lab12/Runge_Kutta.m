function y = Runge_Kutta(a, b, n, y0, f)

h = (b-a)/n;
y = zeros(n+1,1);
y(1) = y0;
x = a; 

for i = 1 : n
  
K1 = f(x, y(i));
K2 = f(x + h/2, y(i) + h/2 * K1);
K3 = f(x + h/2, y(i) +h *  K2/2);
K4 = f(x + h, y(i) +h * K3);
y(i+1) = y(i)+h*(K1+2 * K2+2 * K3+K4)/6;
x = x+ h ;
endfor
endfunction