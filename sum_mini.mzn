include "globals.mzn";
int: n=8;
array[1..n] of int: vec = [3,-5,11,1,2,9,9,10];
array[1..n] of var 0..1: suma;
% reificación
predicate cardinal(array[1..n] of var 0..1:s, int:x, var int:c) =
   c = sum([ if s[i]==x then 1 else 0 endif | i in index_set(s) ]);
constraint cardinal(suma,1,2);
solve minimize sum(i in 1..n)(suma[i]*vec[i]);