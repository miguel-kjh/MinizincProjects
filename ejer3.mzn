include "globals.mzn";
int: n = 6;
int: ing = 4;
set of int: recetas = 0..n;
array[1..n] of int: valor = [3,8,19,20,21,12];
int: numRecetas = 3;
set of int: ingredientes = 1..ing;
array[ingredientes] of set of recetas: grupo = [{1,2,6},{1,4,3},{1,5,4},{6,5,2}];
array[1..numRecetas] of var recetas: menu;
%Restriciones
constraint forall(i in grupo)
(
  forall(j in i)
  (
    member(menu,j) -> forall(k in i where k != j)(not(member(menu,k)))
  )
) /\ forall(i in recetas where i != 0)(count(menu,i,1) \/ count(menu,i,0));
var int: maximo = sum(i in menu where i != 0)(valor[i]);
solve maximize maximo;
output["\(maximo) ->", show(menu)]