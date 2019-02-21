%Dilucidar el árbol de expansión mínimo
include "globals.mzn";
set of int:caminos = 1..8;
array[caminos] of int: pesos = [1,6,5,3,3,2,1,1];
array[caminos] of var 0..1: ruta;
int: maximo = 3;
constraint count_eq(ruta,1,maximo);
solve minimize sum(i in caminos)(ruta[i]*pesos[i]);