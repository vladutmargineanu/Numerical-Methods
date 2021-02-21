	x = 0:pi/3:7*pi;
	y = sin(x)+cos(3*x);
	xi = 0:pi/15:7*pi;

	for i = 1 : length(xi)
		yi(i) = feval('SplineC2natural', x, y, xi(i));
	endfor
	
	plot(x, y, 'g-o', xi, yi, 'r-*');
	legend ('data', 'spline C2 natural');
	axis([0 23 -2 2.7]);