set of int: x = {1,4,45,6,10,-8};
array[1..2] of var x: s;
int: suma = 16;
constraint forall(i in 1..2-1)(s[i] < s[i+1]);
constraint sum(s) = suma;
solve satisfy;
