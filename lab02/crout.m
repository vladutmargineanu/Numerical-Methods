function [L U] = crout(A)
	[n n] = size(A);
	L = zeros(n);
	U = eye(n);
	L(1:n,1) = A(1:n,1);

	for p = 1 : n
		for i = p : n
		    s = 0;
		    for k = 1 : p-1
		        s = s+L(i,k)*U(k,p);
		    endfor

		    % echivalent pentru calculul sumei
		    % s = L(i,1:k-1)*U(1:k-1,k);

		    L(i,p) = A(i,p)-s;
		endfor

		for j = p+1 : n
		    % --------------------------------
		    s = 0;
		    for k = 1 : p-1
		        s = s+L(p,k)*U(k,j);
		    endfor

		    % echivalent pentru calculul sumei
		    % s = L(k,1:k-1)*U(1:k-1,j);

		    U(p,j) = (A(p,j)-s)/L(p,p);
		endfor			
	endfor
endfunction
