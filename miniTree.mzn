%Dilucidar el árbol de expansión mínimo
include "globals.mzn";
set of int:nodos = 1..5;
array[caminos] of int: pesos = [1,6,5,3,3,2,1,1];
array[caminos] of var 0..1: ruta;
