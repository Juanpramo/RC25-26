/*

	Sea mas_veces(+Lista, -Elem, -Num) cierto cuando Elem unifica con
	el elemento que se repite mas veces en Lista, y Num unifica con el
	número de ocurrencias de Elem en Lista. No tiene sentido en una lista vacía

	Sea comprime(+Lista, -ListaR) cierto cuando ListaR unifica con una 
	lista comprimida de la siguiente manera:
	
	comprime([a, a, a, b, b, c, a, c, c], R).
	R = [(a, 3), (b, 2), (c, 1), (a, 1), (c, 2)].
	
*/

	comprime([], []).
	comprime([A], [(A, 1)]).
	comprime([C|R], [(E, N2)|L]):- comprime(R, [(E, N)|L]), E == C, N2 is N + 1. 
	comprime([C|R], [(C, 1),(E, N)|L]):- comprime(R, [(E, N)|L]), E \= C. 
	
	mas_veces(L, E, N):- msort(L, LS), comprime(LS, LSC), mayor_n(LSC, E, N).
	mayor_n([(E, N)], E, N).
	mayor_n([(C, NC)| R], C, NC):- mayor_n(R, _, NE), NC >= NE.
	mayor_n([(_, NC)| R], E, NE):- mayor_n(R, E, NE), NC < NE.
	
	/*
	mayor_n([(E, N)], [E], N).
	mayor_n([(C, NC)| R], [C], NC):- mayor_n(R, _, NE), NC > NE.
	mayor_n([(_, NC)| R], [E], NE):- mayor_n(R, E, NE), NC < NE.
	mayor_n([(C, NC)| R], L, NE):- mayor_n(R, E, NE), NC = NE, append(E, [C], L).
	*/