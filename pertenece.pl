/*

pertenece(?Elem, ?Lista)

es cierto si Elem es un elemento de Lista


pertenece(X, [Cabeza|Resto]) :- pertenece(X, Resto).
pertenece(Cabeza, [Cabeza|_]).


*/

pertenece(Ele, [Ele|_]).
pertenece(X, [Cabeza|Resto]) :- pertenece(X, Resto).