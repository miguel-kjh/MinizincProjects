include "globals.mzn";
int: numero_nodos;
int: enlaces;
set of int: nodos = 0..numero_nodos-1;
array[1..enlaces] of set of int: grafo;
int: colores;
array[nodos] of var 0..colores: mapa;
constraint forall(i in grafo)(
  mapa[i[1]] != mapa[i[2]]
);
constraint mapa[0] = 0; %Se rompe la simetría 
%Solo se elige un nuevo color B si los colores 0..B-1 ha aparecido antes
constraint forall(i in 0..numero_nodos-2)(value_precede(i,i+1,mapa));
solve minimize max(mapa);
output[show(mapa), "\n"]


