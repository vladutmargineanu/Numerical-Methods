function __test_givens()
	
	%functie de test pentru  functia de descompunere a unei matrice A in Q R prin rotatori givens
	% Observatie : metoda este instabila si depinde de k(a) astfel ca nu se verifica intotdeauna q*r=A
	% Testul nr.1
	A=[-6 2; 8 4]
	b=[1 1]'
	[Q R b]=givens(A,b)
	%solutia este : Q=[-0.6 -0.8;0.8 -0.6]; R=[10 2;0 -4];b=[ 0.2 -1.4]';

    disp('------------------------');
    
	% Testul nr.2
	A=[1 1; 2 3;2 1]
	b=[1 1 1]'
	[Q R b]=givens(A,b)
	%solutia este : Q=[ 0.3333   -0.0000   -0.9428; 0.6667    0.7071    0.2357; 0.6667   -0.7071    0.2357]; R=[3 3; 0 1.4142; 0 0] ;b=[1.6667 0 -0.4714]
    
    disp('------------------------');

	%Testul nr.3
	A=[-12 1; 4 0;3 3]
	b=[1 1 1]'
	[Q R b]=givens(A,b)
	%solutia este : Q=[ -0.9231    0.2495    0.2927;  0.3077    0.0225    0.9512;  0.2308    0.9681   -0.0976]; R=[ 13.0000 -0.2308; 0 3.1538; 0 0];b=[-0.3846 1.2402 1.1463]




	


