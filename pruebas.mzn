%Listas intensinales
array[1..3] of var 1..10: a;
constraint forall (i,j in 1..3 where i < j) (a[i] != a[j]);
constraint forall ([a[i] != a[j] | i,j in 1..3 where i < j]);