function x = solJacobi(A, b, x0, tol, maxiter)
	% Rezolvarea sistemului Ax=b folosind metoda Jacobi
	% Intrari:
	%		A - matricea sistemului
	%		b - vectorul termenilor liberi
	%		x0 - aproximatia intiala a solutiei
	%		tol - precizia determinarii solutiei
	%		maxiter - numarul maxim de iteratii
	% Iesiri:
	%		x - solutia sistemului