int: n;
array[1..n] of var int: fibo;
constraint fibo[1] = 0 /\ fibo[2] = 1;
constraint forall(i in 3..n)(
  fibo[i] = fibo[i-1] + fibo[i-2]
); 
solve satisfy;