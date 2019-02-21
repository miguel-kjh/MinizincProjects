include "globals.mzn";
enum women = {Maria, Ana, Lucia};
enum men = {Carlos, Marco, Juan};
array[women,men] of int: wrank = [|1,2,3|3,2,1|3,1,2|];
array[men,women] of int: mrank = [|2,1,3|1,2,3|1,3,2|];
array[men] of var women: wife;
array[women] of var men: husband;
constraint inverse(wife,husband);
constraint 
  forall(j in men,i in women)(
      mrank[husband[i],i]>=wrank[wife[j],j]
  ); 
solve satisfy;