package Linear_Search
  with SPARK_Mode
is

   type T is range -1 .. 1000;
   type Ar is array(T) of Integer;


   function Search (A : Ar; I : Integer) return T with
 -- If I exists in A, then Search'Result indicates its position
 Post => (if Search'Result in A'Range then A (Search'Result) = I
 else (for all Index in A'Range => A (Index) /= I));

end Linear_Search;
