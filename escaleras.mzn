include "globals.mzn";
set of int:escaleras=1..6;
array[escaleras] of int:costes = [32,12,42,93,10,5];
array[1..2,1..3] of var escaleras: s = [];
constraint alldifferent(s);
solve minimize sum(i in escaleras)(costes[s[i]]);