include "globals.mzn";
int:alfiles = 2;
int:tablero = 3;
array[1..tablero] of var 0..alfiles: pos;
constraint forall(i in 1..tablero-1)
(forall(j in i+1..tablero)(pos[i] != pos[i+1]+(j-i)));
constraint forall(i in 1..tablero-1)
(forall(j in i+1..tablero)(pos[i] != pos[i+1]-(j-i)));
constraint count_eq(pos,0,1);
solve satisfy; 