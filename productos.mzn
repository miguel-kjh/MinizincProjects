set of int: productos = 1..5;
set of int: recursos = 1..4;
array[productos] of int: beneficios = [11,18,15,17,11];
array[recursos] of int: r = [5000,7500,4000,3000];
array[productos,recursos] of float:cost = [|1.5,1,1,1|2,0,2,0|1.5,0.5,1,1|0.5,1,0.9,1.5|0.1,2.5,0.1,2.5|];
array[productos] of var int: x;
constraint forall(i in productos)(x[i] >= 0);
constraint forall(j in recursos)(
  sum(i in productos)(cost[i,j] * x[i]) <= r[j]
);
solve maximize sum(i in productos)(x[i]*beneficios[i]);



