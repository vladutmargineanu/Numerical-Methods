function yi = Neville(x, y, xi)
	n = length(x);
	
	for k = 1 : n-1 
		for i = 1 : n-k
			raport = (xi-x(k+i))/(x(i)-x(k+i));
			y(i) = raport*y(i)+(1-raport)*y(i+1);
		endfor
	endfor
	
	yi = y(1);
endfunction