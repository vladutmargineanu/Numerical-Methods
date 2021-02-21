function [L U]=crout(A)

	% factorizare directa Crout
	% Intrari: A = matricea de factorizat
	% Iesiri: A = matricele in urma factorizarii

	[ n,n ] = size(A);
	for p = 1 : n

		for i = p : n
 			%s = A( i, 1 : p-1 ) * A( 1:p-1, p );
			A( i,p ) = A( i, p ) - A( i, 1 : p-1 ) * A( 1:p-1, p );
		endfor

		for j = p+1 : n
		    %s = A( p, 1 : p-1 ) * A( 1 : p-1, j );
			A( p, j ) = ( A( p, j ) - A( p, 1 : p-1 ) * A( 1 : p-1, j ) ) / A( p, p );
		endfor
	endfor
	L = tril( A );
	U=A-L+eye(n);

endfunction