/*

Propiedad de Unicidad

Se dice que dos términos unifican si:

1) Si no tienen variables, unifican si son IDÉNTICOS (carácter a carácter, con los paréntesis hay algunas excepciones)

1 + 1 != 2 (NO SON IDENTICOS, UNO ES UNA EXPRESIÓN Y EL OTRO UNA CONSTANTE)
(1 + 1) != 2 (los paréntesis alteran el orden en el q se evalúa pero no quiere decir que se evalúen)
(1 + 1) == 1 + 1 (Los paréntesis alteran el orden, pero en este caso es el mismo)
1 + (1 + 1) != 1 + 1 + 1 (ahora sí se hace en diferente orden)
(1 + 1) + 1 == 1 + 1 + 1 (ahora sí permanece el mismo orden)

2) Si tienen variables, unifican SI Y SOLO SI existe una sustitución de dichas variables que hace
que ambos términos sean idénticos

1 + 1 = X -> X = 1 + 1
X = 1 + 1 -> X = 2 (si se pone a la izquierda, se evalúa)

hay un operador que permite que se evalúen las dos expresiones

1 + 1 =:= 2 * 1 -> 2 == 2 -> TRUE :^]

X = X + 2 -> X = X + 2 -> X + 2 = X + 2 TRUE

Sea la propiedad num_elem(+Lista, -Resultado) cierta si Resultado unifica en el numero de elementos de lista 

*/

num_elem([], 0).
num_elem([_|Resto], R2):- num_elem(Resto, R), R2 is R + 1.