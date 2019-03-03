include "globals.mzn";
set of int: nd = 1..3;
array[nd] of int: donantes = [4,3,4];
array[nr] of int: receptores = [3,2,4];
set of int: nr = 1..3;
array[nd,nr] of int: m = [|100,25,50|25,10,85|80,80,90|];
array[nd] of var nd: x;
constraint alldifferent(x);
constraint forall(i in nd)(
  if donantes[i] = 1 then receptores[x[i]] > 1
  elseif donantes[i] = 2 then receptores[x[i]] = 2
  elseif donantes[i] = 3 then receptores[x[i]] = 1 \/ receptores[x[i]] = 3
  else receptores[x[i]] = 4 \/ receptores[x[i]] = 1
  endif
);
var int:suma = sum(i in nr)(m[x[i],i]);
solve maximize suma;
output[show(x),"-->", show(suma)]

