int: n = 4;
set of int: job = 1..n;
array[job] of set of int: horario = [{1,2},{2,6},{3,5},{6,19}];
array[job] of int: v = [50,20,100,200];
array[job] of var 0..1: x; % amount
constraint forall(i in 1..n-1)(
  forall(j in i+1..n)(
    x[i] * horario[i][1] <= horario[j][2] 
    /\ 
    x[i] * horario[i][2] <= horario[j][1]
  )
);
var int: suma = sum(i in job)(v[i] * x[i]);
solve maximize suma;
output[show(x), "-->" , show(suma)];
