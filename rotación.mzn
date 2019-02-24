include "globals.mzn";
int: n = 6;
array[1..n] of int: v1 = [4, 6, 8, 9, 1, 2];
array[1..n] of var 1..9: vr;
constraint forall(i in v1)(member(vr,i));
var 0..n-1: d;
%constraint forall(i,j in 1..n-1 where i != j)(vr[i] = v1[j] -> abs(i-j) = abs(i+1-j+1));
constraint forall(i in 1..n-1)(vr[i] = v1[(i+d) mod n+1]);
solve satisfy;