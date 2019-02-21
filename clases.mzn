int: n = 9;
set of int: alumnos = 1..9;
array[alumnos] of int: notas=[7,3,2,10,10,9,4,5,8];
int: tg = 3;
array[1..tg] of var alumnos: grupos;
constraint n mod tg == 0;
constraint sum(i in grupos)(i*notas[i])/tg >= 5;
constraint forall(i in 1..tg)(grupos[i] = 1 -> forall(j in 1..tg where j != i)(grupos[j] != 3 /\ grupos[j] != 4));
constraint forall(i in 1..tg)(grupos[i] = 3 -> forall(j in 1..tg where j != i)(grupos[j] != 4));
constraint forall(i in 1..tg-1)(grupos[i] < grupos[i+1]);
solve satisfy;
output[show(grupos)]
