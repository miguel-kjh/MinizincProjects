int: n = 5;
set of int: item = 1..n;
int: capacity = 10;
array[item] of int: values = [3,18,4,15,11];
array[item] of int: weitgh = [2,4,1,6,4];
var set of item: x; % amount
constraint sum(i in x)(weitgh[i]) <= capacity;
solve maximize sum(i in x)(values[i]);

