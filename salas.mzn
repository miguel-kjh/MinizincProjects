int: n = 4;
set of int:act = 1..n;
array[1..n,1..2] of int: m = [|13,14|13,15|15,16|16,17|];%ordenados
array[1..n] of var 0..1: x;
constraint forall(i in 1..n-1)(
  forall(j in i+1..n)(
     x[i]*m[i,2] <= m[j,1]
  )
);
solve maximize sum(i in 1..n where x[i] != 0)(x[i]);