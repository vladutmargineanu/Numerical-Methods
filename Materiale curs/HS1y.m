function y = HS1y(y,beta,x)

	%aplica reflectorul H1 unui vector oarecare y

	m = length(x);
	%ro = beta * x(1:m) * y(1:m)';
	ro = x(1:m) * y(1:m)'/beta;
	y(1:m) = y(1:m) - ro * x(1:m);
end

