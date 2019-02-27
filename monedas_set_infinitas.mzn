int:n = 255555;
set of int:monedas = {0,1,2,3,5,4,6,7,10};
array[1..n] of var monedas: s;
constraint sum(i in 1..n where s[i] != 0)(s[i]) = n;
constraint forall(i in 1..n-1)(s[i] <= s[i+1]);
var 1..n:index;
constraint s[index] == 0;
solve maximize index;
