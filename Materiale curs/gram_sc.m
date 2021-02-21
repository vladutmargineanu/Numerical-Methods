function [Q, R] = gram_sc(A)
	% functie care aplica algoritmul qr clasic unei matrice;
	% Intrari:
	%A = matricea de factorizat (baza initiala)
	% Iesiri:Q = factorul ortogonal(baza ortonormata)
	% R = factorul superior triunghiular
	
	[m,n]=size(A);
	R=zeros(m,n);
	Q=eye(m);
	
	for i = 1 : n
		R(1:i-1,i) = Q(1:m,1:i-1)' * A(1:m,i);
		y = A(1:m,i) - Q(1:m,1:i-1) * R(1:i-1,i);
		R(i,i) = norm(y);
		Q(1:m,i) = y ./ R(i,i);
	endfor
endfunction
