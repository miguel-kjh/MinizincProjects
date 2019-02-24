include "globals.mzn";
int: n = 3;
array[1..n] of int: necesidad = [10,5,4];
int: total = 6;
array[1..n] of var 1..n: orden;
constraint alldifferent(orden);
var int: variable = sum(i in orden)(necesidad[i]) <= total;
solve maximize variable ;
output[show(orden)]