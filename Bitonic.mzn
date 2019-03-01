set of int: arr = {12, 11, 40, 5, 3, 1};
int:n = 8;
array[1..n] of var arr: lb;
var 1..n-1:l;
constraint forall(i in 1..l-1 where lb[i] != 0)(lb[i] < lb[i+1]);
constraint forall(i in l..n-1 where lb[i] != 0)(lb[i] > lb[i+1]);
solve maximize sum(i in 1..n where lb[i] != 0)(lb[i]);