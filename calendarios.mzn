include "globals.mzn";
int: n = 8;
set of int:equipos =  1..n;
int: m = 4;
set of int: partidos = 1..m;
array[equipos,partidos] of var equipos: mat;
constraint forall(i in equipos)(alldifferent([mat[i,j] | j in partidos]));
constraint forall(i in equipos, j in partidos)(
  i != mat[i,j]
);
%constraint forall(j in partidos)(alldifferent([mat[i,j] | i in equipos]));
constraint forall(e in equipos,j in partidos)(sum(i in equipos)(e = mat[i,j]) <= 2);
% constraint forall(i in equipos, j in partidos)(
%   mat[i,j] = mat[mat[i,j],j]
% );
solve satisfy;