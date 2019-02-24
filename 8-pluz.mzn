include "globals.mzn";
array[1..9] of int: a = [0,1,2,3,4,5,6,7,8];
array[1..9] of int: secuencia = [2,3,4,9,1,5,6,7,8];
array[1..9] of var 0..8: m;
constraint forall(i in 1..9)(m[i] = a[secuencia[i]]);
solve satisfy;
output[show(m)];
