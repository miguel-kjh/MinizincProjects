int: n= 10;
int: ingredientes=8;
array[1..n] of int: values = [10,8,4,2,6,9,5,3,8,10];
array[1..ingredientes] of set of 0..n: group = 
[
{1,4,6},{1,2,6,7},{1,3,6,8},
{1,2,3},{2,9,10},{5,6,8,10},
{7,8,10},{1,3,5}
];
int: numPlatos=3;
array[1..numPlatos] of var 0..n: x; 
constraint forall(i in 1..ingredientes)(sum(j in 1..numPlatos)(x[j] in group[i])<= 1);
constraint forall (i in 1..numPlatos-1)(x[i] >= (x[i] != 0) + x[i+1]);
var int: valorNutricional=sum(i in 1..numPlatos where x[i] > 0)(values[x[i]]);
solve maximize valorNutricional;
output ["Valor nutricional: \(valorNutricional) ->", show(x)];