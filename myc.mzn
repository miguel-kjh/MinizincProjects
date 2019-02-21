int: misioneros = 4;
int: canibales = 2;
int: total = misioneros+canibales;
array[1..total] of var 1..2: A; % 1..2 --> eficiencia
% 2 --> canibal || 1 --> misionero
%constraint forall(i in A)(A[i] = 1 \/ A[i] = 2);
% reificación
constraint misioneros > canibales /\ total mod 3 = 0;
predicate cardinal(array[1..total] of var 1..2:s, int:x, var int:c) =
   c = sum(i in index_set(s))(if s[i]==x then 1 else 0 endif);
constraint cardinal(A,1,misioneros);
constraint cardinal(A,2,canibales);
constraint forall([ A[i] >= A[i+1] |i in 1..total-1]); 
solve satisfy;