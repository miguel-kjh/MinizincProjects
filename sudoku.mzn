include "globals.mzn";
set of int:R = 1..9;
array[R,R] of var R: s;
s = [|
_,_,_,1,_,2,9,_,_|
_,_,_,_,9,_,3,_,1|
_,_,_,_,_,8,_,_,6|
_,_,_,_,3,_,_,_,_|
_,6,2,_,_,_,_,_,_|
_,7,9,_,1,6,_,_,_|
_,_,8,_,6,_,_,_,7|
_,_,4,_,_,_,1,9,_|
_,_,_,_,_,4,_,2,_|
|];
constraint forall(i in R)(alldifferent([s[i,j] | j in R]) /\ alldifferent([s[j,i] | j in R]));
%Cuadrados
constraint forall(k in {0,3,6})(forall(l in {0,3,6})(alldifferent([s[i+k,j+l] | i,j in 1..3])));
solve satisfy;
