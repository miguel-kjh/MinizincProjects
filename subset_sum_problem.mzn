int: n = 5;
array[1..n] of int: conjunto = [1,2,29,4,22];
array[1..n] of var 0..1: sub;
int: suma = 24;
constraint sum(i in 1..n)(sub[i]*conjunto[i]) == 5;
solve satisfy;