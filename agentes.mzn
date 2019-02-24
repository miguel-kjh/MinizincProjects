int: n = 4;
set of int:agentes = 1..n;
array[agentes,agentes] of int:cost = [|11,40,18,40|80,1,40,22|341,56,193,223|23,23,78,98|];
array[agentes] of var agentes:x;
constraint forall(i,j in agentes where i != j)(x[i] != x[j]);
var int: variable =  sum(i in agentes)(cost[i,x[i]]);
solve minimize variable;
output[show(x),"-->", show(variable)]