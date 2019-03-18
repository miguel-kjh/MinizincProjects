include "globals.mzn";
int:n = 6;
set of int: nodos = 1..n;
array[nodos,nodos] of int: mat = [|0,2,3,0,0,5|2,0,3,0,5,0|3,3,0,4,0,0|0,0,4,0,3,3|0,5,0,3,0,2|5,0,0,3,2,0|];
array[1..n div 2, 1..2] of var nodos: x;
constraint alldifferent([x[i,j] | i in 1..n div 2, j in 1..2]);
constraint forall(i in 1..n div 2, j in 1..2)(mat[x[i,j],x[j,i]] = mat[x[j,i],x[i,j]]);
solve minimize sum(i in 1..n div 2)(sum(j in 1..2)(x[i,j]));
% constraint forall(i in nodos, j in nodos where mat[x1[i],x2[j]] != 0 /\ mat[x2[j],x2[i]] != 0 /\ i != j)(
%   mat[x1[i], x2[j]] = mat[x2[j], x1[i]]
% );
% solve minimize sum(i in nodos, j in nodos where mat[x1[i],x2[j]] != 0 /\ i != j)(mat[x1[i], x2[j]]);