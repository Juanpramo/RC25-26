/*

	Sea inserta_todo(Elem, L, LE) cierto cuando LE unifica con una lista 
	con todos los elementos de L, más el elemento Elem. Devuelve todas las
	posibles inserciones de Elem dentro de L.
	
	
	Sea permuta(+L, -LP) cierto cuando ListaR unifica con una lista
	que contiene todos los elementos de L en orden diferente. Este predicado 
	genera todas las listas posibles por backtracking.

*/

inserta_todo(E, L, [E|L]).
inserta_todo(E, [C|L], [C|ListaE]):-
	inserta_todo(E, L, ListaE).

permuta([A], [A]).
permuta([C|Resto], ListaP):-
	permuta(Resto, RestoP),
	inserta_todo(C, RestoP, ListaP).
	