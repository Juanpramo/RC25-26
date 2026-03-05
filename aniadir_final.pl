/*
	
	sea aniadir_final(+Elem, +Lista, -ListaR) cierto
	cuando ListaR unifique con una lista que contiene los 
	mismos elementos que lista, añadiendo Elem al final

*/

	aniadir_final(X, [], [X]).
	aniadir_final(X, [C|Lista], [C|R2]):- aniadir_final(X, Lista, R2).