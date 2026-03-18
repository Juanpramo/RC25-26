/*

Sea divide(+Elem, +Lista, -Menores, -Mayores) cierto cuando Menores unifica con una 
lista que contiene los elementos de Lista menores o iguales a Elem y Mayores unifica
con una lista que contiene los elementos de Lista mayores que Elem

Sea quicksort(+Lista, -ListaO) cierto cuando ListaO unifique con una lista
con los mismos elementos que Lista, pero ordenados. La ordenación debe ser 
mediante el algoritmo Quicksort

*/

divide(_, [], [], []).
divide(E, [Cab|L], [Cab|Menores], Mayores):- Cab =< E, divide(E, L, Menores, Mayores).
divide(E, [Cab|L], Menores, [Cab|Mayores]):- Cab > E, divide(E, L, Menores, Mayores).

quicksort([], []).
quicksort([E], [E]).
quicksort([Cab|L], LO):- 
	divide(Cab, L, Men, May), 
	quicksort(Men, MenO), 
	quicksort(May, MayO),
	append(MenO, [Cab|MayO], LO).