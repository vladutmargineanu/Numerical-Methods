function y = trapez(a, b, f1)
   h = b - a;
   y = h/2( f1(a) + f1(b));
   
 % a=0;
% b=1;
% f=@(x)x.*sin(x);
% n=100;
% x=linspace(a,b,n+1);
% h=(b-a)/n;
% y=sum((h*f((x(1:n)+x(2:n+1)))/2))

endfunction 
  trapez(0, 1, @f1);