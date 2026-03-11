/* 

Sea ordenada(+Lista) cierta si los
elementos de Lista están ordenados de menor a mayor.

Sea ordena_burbuja(+Lista, -ListaO) cierta si ListaO 
unifica con una lista con los elementos de Lista, pero
ordenados de menor a mayor

*/

ordenada([]).
ordenada([_]).
ordenada([Cab1|R]):- R = [Cab2|_], Cab1 =< Cab2, ordenada(R).

ordena_burbuja(Lista, Lista):- ordenada(Lista).
ordena_burbuja(Lista, ListaO):- 