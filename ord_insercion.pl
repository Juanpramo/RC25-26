/*

Sea inserta_en_list_ord(E, Lista, ListaE) cierta cuando ListaE unifica
con una lista igual que Lista, salvo que también tiene un elemento E.
Ambas listas deben estar ordenadas

Sea ord_insercion(Lista, ListaO) cierta cuando ListaO unifica
con una lista que contiene los mismos elementos que Lista, 
pero ordenados.

*/

inserta_en_list_ord(E, [], [E]).
inserta_en_list_ord(E, [Cab|R], [E, Cab|R]):- E =< Cab.
inserta_en_list_ord(E, [Cab|R], [Cab|ListaE]):- E > Cab, inserta_en_list_ord(E, R, ListaE).

ord_insercion([], []).
ord_insercion([E|Lista], ListaO):-
	ord_insercion(Lista, Resto),
	inserta_en_list_ord(E, Resto, ListaO).