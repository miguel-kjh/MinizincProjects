%Listas intensinales
int: n = 4;
int: m = 10;
array[1..n] of var int: a;
constraint forall(i in a)(i > 0);
constraint forall(i in 1..n-1)(2*a[i] <= a[i+1] /\ a[i+1] <= m);
% constraint forall (i,j in 1..3 where i < j) (a[i] != a[j]);
% constraint forall ([a[i] != a[j] | i,j in 1..3 where i < j]);
