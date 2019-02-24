int: A = 1;
int: B = 7;
int: C = 100;
var int:ca;
var int:cb;
constraint ca <= C/A /\ cb <= C/B;
constraint ca*A + cb*B == C;
solve minimize ca;