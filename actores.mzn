int:num = 4;
set of int:actores = 1..num;
set of int:maximo = 1..3;
set of int:dias = 1..5;
array[actores] of int: coste = [100,20,130,50];
array[dias,maximo] of var actores: peli;
constraint forall(j in maximo)(
  forall(i in 1..5-2)(
    peli[i,j] != peli[i+2,j]
  )
);

