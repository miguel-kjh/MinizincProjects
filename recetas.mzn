int: n= 10;
int: ingredientes=8;
array[1..n] of int: values = [10,8,4,2,6,9,5,3,8,10];
array[1..ingredientes] of set of 1..n: group = [{1,4,6},{1,2,6,7},{1,3,6,8},{1,2,3},{2,9,10},{5,6,8,10},
{7,8,10},{1,3,5}];
var set of 1..10: x;
constraint forall(i in group)(card(i intersect x ) <= 1);
constraint card(x) <= 3;
var int: valorNutricional=sum(i in x)(values[i]);
solve maximize valorNutricional;