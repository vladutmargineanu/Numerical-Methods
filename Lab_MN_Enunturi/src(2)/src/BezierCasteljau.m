	x = [1 0.7 2.7 3.7];
	y = [0.5 2 2 0.5];

	i = 1;	
	B_x = zeros();
	B_y = zeros();
	hold off; 
		
	for t = 0 : 0.05 : 1
		P = Casteljau(x, y, t);
		B_x(i) = P(1);
		B_y(i) = P(2);
		plot(B_x, B_y, 'b-s');
		legend ('puncte calculate', 'puncte aflate pe curba Bezier');
		i++;
		
		pause(0.5);
		hold off; 
	endfor	
	