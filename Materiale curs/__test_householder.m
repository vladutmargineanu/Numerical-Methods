function __test_householder()

		% functie de test pentru functia de triunghiularizare ortogonala Householder
		printf("\n------------\nTestul nr. 1\n");
		A=[3 3 0; 3 5 0; 0 0 6]
		b=[1 2 1]'
		[A b]=householder(A,b);
		printf("A este :\n");
		disp(A);
		printf("b este :\n");
		disp(b);
		%solutia este :A=[ -4.24264  -5.65685 0;0 -1.41421 0;0 0 6]; b=[ -2.12132 -0.70711  1]';
		
		printf("\n------------\nTestul nr. 2\n");
		A=[2 4 5; 1 -1 1;2 1 -1]
		b=[2 0 1]';
		[A b]=householder(A,b);
		printf("A este :\n");
		disp(A);
		printf("b este :\n");
		disp(b);
		%solutia este:A=[-3 -3  -3;0 3 3;0 0 -3]; b=[-2 -1 0]'
endfunction


		
