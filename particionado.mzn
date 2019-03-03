include "globals.mzn";
set of int: c = {1,5,11,5};
array[1..n] of int:ca = [1,5,11,5];
int: n = 4;
array[1..n] of var c:x;
var 1..n-1: l;
constraint forall(i in c)(sum(j in 1..n)(ca[i] = i) = sum(j in 1..n)(x[i] = i));
constraint sum(i in 1..l)(x[i]) = sum(i in l+1..n)(x[i]);
solve satisfy;
