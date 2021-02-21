function [Q R]=gram_scmod(A)
	% functie care aplica algoritmul qr clasic unei matrice;
	% Intrari:
	% A = matricea de factorizat (baza initiala)
	% Iesiri:Q = factorul ortogonal(baza ortonormata)
	% R = factorul superior triunghiular
		
	[m n]=size(A);
	Q = A;
	R = zeros(m,n);
	for k = 1:n
		R(k,k) = norm(Q(1:m,k));
		Q(1:m,k) = Q(1:m,k) / R(k,k);
	   for j = k+1:n
		R(k,j) = Q(1:m,k)' * Q(1:m,j);
		Q(1:m,j) = Q(1:m,j) - Q(1:m,k) * R(k,j);
	   endfor
	endfor
endfunction
