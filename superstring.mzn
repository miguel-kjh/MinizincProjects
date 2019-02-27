int: n = 5;
array[1..n] of set of int: s = [{1,2,3},{7,7,3},{3,4,1},{4,1,9},{5,8}];
var  set of 1..9: sf;
constraint forall(i in 1..n)(
  card(s[i] intersect sf) = card(s[i])
);
solve minimize card(sf);