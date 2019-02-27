include "globals.mzn";
set of int: estudiantes = 1..15;
array[1..3,1..7] of var estudiantes: layout;
array[estudiantes] of int: coste = [21,31,19,20,29,23,19,50,29,12,13,43,12,32,10]; 
constraint forall(j in 1..7)(
   forall(i in 1..3-1)(layout[i,j] < layout[i+1,j])
);
constraint forall(j in 1..7-1)(
  forall(i in 1..3)(count([layout[k,j+1] | k in 1..3],layout[i,j],0))
);
constraint forall(n in 1..15)(
    count([layout[k,1] | k in 1..3],n,1) \/
    count([layout[k,2] | k in 1..3],n,1) \/
    count([layout[k,3] | k in 1..3],n,1) \/
    count([layout[k,4] | k in 1..3],n,1) \/
    count([layout[k,5] | k in 1..3],n,1) \/
    count([layout[k,6] | k in 1..3],n,1) \/
    count([layout[k,7] | k in 1..3],n,1)
);
var int: valor=sum(j in 1..7)(sum(i in 1..3)(coste[layout[i,j]]));
solve minimize valor;
output[show(layout), "-->", show(valor)];
