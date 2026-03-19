/*

	Sea lista_aleatoria(N, V_Max, Lista) cierto cuando Lista unifica con una
	lista de N numeros aleatorios entre 1 y N.

*/

lista_aleatoria(0, _, []).
lista_aleatoria(N, V_Max, [Cab|L]):- 
	N > 0,
	Vrand is V_Max + 1,
	random(1, Vrand, Cab),
	Nant is N - 1,
	lista_aleatoria(Nant, V_Max, L).