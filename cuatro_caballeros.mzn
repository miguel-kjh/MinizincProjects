int: n= 4; 
array [1..n] of var 1..n: t;
constraint forall(i in 1..n-1)(t[i] != t[i+1]);
constraint forall(i in 1..n-1)(t[i] != t[i+1]+(i+1-i) /\ t[i] != t[i+1]-(i+1-i));
solve satisfy;