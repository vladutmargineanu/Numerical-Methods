function [x succes] = sor(A, b, x0, w, tol, maxiter)
	% 	Metoda Suprarelaxarii
	%   Functia rezolva sisteme liniare Ax=b folosind metoda suprarelaxarii
	% Input:
	%   A - matricea sistemului
	%   b - vectorul termenilor liberi
	%   x0 - aproximarea intiala a sistemului
	%   w - factorul de relaxare
	%   tol - toleranta
	%   maxiter - numarul maxim de iteratii
	% Output:
	%   x - solutia sistemului
	%   succes - 0 = a fost gasita o solutie / 1 = metoda nu converge pentru maxiter