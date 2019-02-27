include "globals.mzn";
int: numero_nodos = 3;
set of int: nodos = 1..numero_nodos;
array[nodos,nodos] of  int: grafo = [|0,1,1|1,0,1|0,1,0|];
var nodos: maximo;
solve maximize max(i in nodos)(
  grafo[i,maximo] = 1
);
output[show(maximo)];
