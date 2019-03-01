include "globals.mzn";
int:n = 6;
set of int: tareas = 1..n;
array[tareas] of int: b = [20,15,10,7,5,3];
array[tareas] of int: d = [3,1,3,1,3,1];
array[tareas] of var 0..n:x;
constraint forall(i in 1..n-1 where x[i] != 0)(
   d[x[i]] <= d[x[i+1]]
);
constraint alldifferent(x);
var int:suma = sum(i in tareas where x[i] != 0)(b[x[i]]);
solve maximize suma;
output[show(x), "-->", show(suma)];