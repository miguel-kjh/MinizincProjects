var int: x;
var int: y;
var int: z;
constraint x+y-z=-1;
constraint x+y+z = 1;
constraint x-z+y = -2;
solve satisfy;
