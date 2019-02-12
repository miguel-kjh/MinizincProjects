% Use this editor as a MiniZinc scratch book
int: n = 5;
set of int: item = 1..n;
int: capacity = 10;
array[item] of int: values = [3,18,4,15,11];
array[item] of int: weitgh = [2,4,1,6,4];
array[item] of var int: x; % amount
constraint forall(i in item)(x[i] >= 0);
constraint sum(i in item)(x[i]*weitgh[i]) <= capacity;
solve maximize sum(i in item)(x[i]*values[i]);