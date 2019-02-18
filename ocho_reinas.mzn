int: n;
int: columnas = n; 
array [1..columnas] of var 1..n: t;
constraint forall (i in 1..n-1)(forall(j in i+1..n)(t[i]!=t[j]));
constraint forall (i in 1..n-1)(forall(j in i+1..n)(t[i]!=t[j]+(j-i)));
constraint forall (i in 1..n-1)(forall(j in i+1..n)(t[i]!=t[j]-(j-i)));
solve satisfy;
array [1..columnas] of int: index = [1,2,3,4,5,6,7,8];
output	["Solución:\n",show(index),"\n",show(t), "\n"]