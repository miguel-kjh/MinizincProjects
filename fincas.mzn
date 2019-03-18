include "globals.mzn";
int: n = 5;
set of int: item = 1..n;
array[item] of float: values = [2,2.4,3,4,4.4];
array[item] of var 0..1: x;
constraint count(x,1,3);
constraint x[5] + x[4] <= 1;
solve minimize sum(i in item)(x[i]*values[i]);