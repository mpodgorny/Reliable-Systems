
package body Linear_Search
  with SPARK_Mode
is

function Search(A: Ar; I: Integer) return T is
      Left  : T;
      Right : T;
      begin
      if (A'First > A'Last) then return -1; end if;
      Left  := A'First; Right := A'Last;
      while Left <= Right loop
         pragma Loop_Invariant (A'First <= Left);
         pragma Loop_Invariant (Right <= A'Last);
         pragma Loop_Invariant (Right >= Left);

         if ( A(Left) = I ) then return Left;
         end if;
      Left:= Left + 1;
      end loop;

      return -1;
   end Search;


end Linear_Search;
