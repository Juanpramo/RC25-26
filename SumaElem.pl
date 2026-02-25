/*

Principio de Inducción (base de muchas soluciones en prolog)

Sea S un conjunto ORDENABLE. Sea n0 el elemento más pequeño de dicho conjunto.

1) sea P(n0) cierto.
2) será cierto P(n) si n > n0, P(n-1).

Sea la propiedad suma_elem(+Lista, -Resultado) cierta cuando resultado unifique en la suma de elementos de Lista

Listas en Prolog

Lista = [1, 2, 3]
Lista_Vacia = []

[Cabeza|Resto] = [1, 2 , 3]
Cabeza == 1, Resto == [2, 3]

*/

suma_elem([], 0).
suma_elem([Cabeza|Resto], R2):- suma_elem(Resto, R), R2 is R + Cabeza.