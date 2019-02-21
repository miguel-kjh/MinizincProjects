%include "globals.mzn";
int: barca = 10;
int: misioneros = 4;
int: canibales = 2;
int: total = misioneros+canibales;
array[1..total] of 1..2: A = [1, 1, 1, 1, 2, 2];
array[1..barca] of var 1..2: b;
predicate cardinal(array[1..total] of var 1..2:s, int:x, var int:c) =
   c = sum(i in index_set(s))(if s[i]=x then 1 else 0 endif);
constraint forall([ b[i] <= b[i+1] |i in 1..barca-1]);
constraint cardinal(b,1,0) \/ cardinal(b,1,2) \/ cardinal(b,1,3);
%constraint not(card(set2Array(b) intersect 2) <= canibales);
solve satisfy; 