include "globals.mzn";
int:n = 3;
set of int:clientes= 1..n;
array[clientes] of int:t = [5,10,3];
array[clientes] of var clientes: orden;
constraint alldifferent(orden);
array[clientes] of var int: T;
constraint forall(i in clientes)(
  T[i] = sum(j in 1..i)(t[orden[j]])
);
var int:suma = sum(T);
solve minimize suma;
output[show(orden), "-->", show(suma)];
