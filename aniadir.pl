/*
	
	sea aniadir(+L1, +L2, -ListaR) cierto
	cuando ListaR unifique con una lista que contiene los 
	mismos elementos que L1, y despues los elementos de L2, 
	todos en orden.

*/

	aniadir([], L2, L2).
	aniadir([Cab|L1], L2, [Cab|LR]):- aniadir(L1, L2, LR).  