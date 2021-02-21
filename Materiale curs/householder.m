function [A b] = householder(A,b)

	%triunghiularizare ortogonala Householder
	%Intrari: A = matricea sistemului
	%         b = vectorul termenilor liberi

	[m,n] = size(A);
	q = min(m-1,n);
	for p = 1 : q
		[beta u A(p:m,p)] = HS1x( A(p:m, p), 1);
		for j = p + 1 : n
			A(p:m,j) = HS1y( A(p:m,j), beta, u);
		end
		b(p:m) = HS1y(b(p:m), beta, u);
	end
end
