include "globals.mzn";
int: n = 6;
array[1..n] of int: x = [5,8,1,4,7,9];
set of int: c = {5,8,1,4,7,9};
array[1..n] of var c: s;
constraint alldifferent(s);
var int:suma = sum(i in 1..n-1)(s[i]+s[i+1]);
solve minimize suma;
output[show(s), "-->" , show(suma)]

