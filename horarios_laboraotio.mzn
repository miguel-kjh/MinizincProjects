int: lab = 480;
int: personal=5;
set of int: PERSONAL = 1..personal;
array[PERSONAL] of int: lista= [55,67,200,72,189];
array[PERSONAL] of var 0..1: horario;
constraint sum(i in PERSONAL)(lista[i]*horario[i]) <= lab;
solve maximize sum(i in PERSONAL)(lista[i]*horario[i]);
output[show(horario)]