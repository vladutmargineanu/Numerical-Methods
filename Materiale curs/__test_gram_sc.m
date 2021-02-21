function __test_gram_sc()

	%functie de test pentru functia care aplica unei matrice Gram Schmidt clasic

	%Testul nr.1
	A=[ 2   4   5;  1  -1   1; 2   1 -1]
	[Q R]=gram_sc(A);
	printf("Q:\n"); 
	disp(Q);
	printf("R:\n"); 
	disp(R);
	%solutia este : Q=[0.66667  0.66667 0.33333;0.33333 -0.66667 0.66667;0.66667 -0.33333 -0.66667]=
        % =1/3*[2 2 1; 1 -2 2; 2 -1 -2]; R=[ 3   3   3;0   3   3;0   0   3];

	%Testul nr.2
	A=[ 1 1;2 0; 2   1]
	[Q R]=gram_sc(A);
	printf("Q:\n"); 
	disp(Q);
	printf("R:\n"); 
	disp(R);
	% solutia este : Q=[ 0.33333 0.66667 0;0.66667 -0.66667 0;0.66667 0.33333 1]; R=[ 3 1;0 1;0  0]

	%Testul nr.3
	A=[-1   1; 2   0;2   2]
	[Q R]=gram_sc(A);
	printf("Q:\n"); 
	disp(Q);
	printf("R:\n"); 
	disp(R);
	%solutia este : Q =[-0.33333 0.66667 0;0.66667 -0.33333 0;0.66667 0.66667 1];  R=[3 1; 0 2; 0 0];

endfunction
	

 

