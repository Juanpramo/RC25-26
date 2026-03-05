/*

Sea invertir(+Lista, -ListaR) cierto cuando ListaR unifica con una 
lista que contiene los mismos elementos que Lista en orden inverso


Método resolución:

0. Aplicar principio de inducción
	1.P(n0)
	2. Para todo n > n0, P(n - 1) -> P(n)
1. Empezar por lo más fácil

*/

invertir([], []).
invertir([Cab|Resto], R2):- invertir(Resto, R), append(R, [Cab], R2).
