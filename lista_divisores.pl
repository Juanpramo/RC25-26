/*

	Sea lista_divisores(+X, +Y, -ListaDiv) cierto cuando ListaDiv unifique
	con una lista en la que se almacenan todos los divisores de X entre 1 e Y
	
	Sea primo(+X) cierto cuando X sea un numero primo
	
	Sea primosEntrexy(+X, +Y, -ListaPrimos) cierto cuando ListaPrimos unifique
	con una lista que contenga todos los numeros primos que se situan entre los 
	valores X e Y

*/

	lista_divisores(_, 1, [1]).
	lista_divisores(X, Y, [Y|Lista_Div]):-
		Y > 1,
		Y =< X,
		X mod Y =:= 0,
		Y2 is Y - 1,
		lista_divisores(X, Y2, Lista_Div).
	lista_divisores(X, Y, Lista_Div):-
		Y > 1,
		Y =< X,
		X mod Y =\= 0,
		Y2 is Y - 1,
		lista_divisores(X, Y2, Lista_Div).
		
	primo(X):- lista_divisores(X, X, [X, 1]).
	
	primosEntrexy(X, X, [X]):- primo(X).
	primosEntrexy(X, X, []):- \+ primo(X).
	primosEntrexy(X, Y, [Y|ListaPrimos]):-
		X > 0,
		Y > 0,
		Y < X,
		primo(Y),
		Y2 is Y + 1,
		primosEntrexy(X, Y2, ListaPrimos).
	primosEntrexy(X, Y, ListaPrimos):-
		X > 0,
		Y > 0,
		Y < X,
		\+ primo(Y),
		Y2 is Y + 1,
		primosEntrexy(X, Y2, ListaPrimos).
	