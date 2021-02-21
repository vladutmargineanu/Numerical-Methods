function [ beta, u, x ] = HS1x( x, p )
	
	%	   determină reflectorul Housholder care
	%    lasa primele p-1 componente neschimbate
	%    modifică componenta p la o valoare mare
	%    anulează restul componentelor

	m = length(x);
	sigma = sign(x(p)) * norm(x(p:m));
	%beta = 1/(sigma * (sigma + x(p)));
	beta = sigma * (sigma + x(p));
	
	u =[zeros(p-1,1); x(p) + sigma; x(p+1:m)];
	x(p) = -sigma;
	x(p+1:m) = 0;

endfunction
