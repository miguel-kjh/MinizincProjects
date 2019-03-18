include "globals.mzn";
set of int:R = 1..9;
int: t = 3; 
int: n = 15;
array[1..t,1..t] of var R: s;
constraint alldifferent(s);
constraint forall(i in 1..3)(
  sum(j in 1..t)(s[i,j]) == n /\ sum(j in 1..t)(s[j,i]) = n
);
constraint sum(i,j in 1..t where i = j)(s[i,j])=n;
constraint sum(i in 1..t)(s[i,t-i+1])=n;
solve satisfy;  