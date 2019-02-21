int: score = 20;
int: n = 6;
set of int: points = {10,5,3};
array[1..n] of var points: runs;
constraint sum(i in 1..n)(runs[i]) = score;
constraint forall(i in 1..n-1)(runs[i] >= runs[i+1]);
solve satisfy;
%extenderlo a n soluciones --> romper simetría