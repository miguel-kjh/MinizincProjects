% Use this editor as a MiniZinc scratch book
int: numero_nodos;
int: enlaces;
set of int: nodos = 0..numero_nodos-1;
array[1..enlaces] of set of int: grafo;
enum colores;
array[nodos] of var colores: mapa;
constraint forall(i in grafo)(
  mapa[i[1]] != mapa[i[2]]
);
solve minimize sum(mapa);
output[show(mapa)]


