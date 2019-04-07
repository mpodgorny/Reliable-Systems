with Ada.Text_IO; use Ada.Text_IO;
package body Selection with SPARK_Mode is

   
   procedure Sort (A : in out Arr) is
      idxMin  : Integer;
      Temp : Integer;
   begin 
      for I in A'First .. A'Last loop
         idxMin := I;

         for J in I+1 ..A'Last loop               

            pragma Loop_Invariant(idxMin in I .. A'Last);  
            pragma Loop_Invariant(for all K in I .. J-1 => A(idxMin)<=A(K)); --inv1
            
            if A (idxMin) > A (J) then                 
               idxMin := J;
            end if;
 
         end loop;
            
         if idxMin /= I then
            Temp    := A (I);
            A (I)   := A (idxMin);
            A (idxMin) := Temp;
         end if;

         pragma Loop_Invariant
           (for all K in A'First .. I =>
              (for all L in K +1  .. A'Last =>
                   A (K) <= A (L)));   
            
      end loop;      

      pragma Assert(Sorted(A));
      
   end Sort;

end Selection;
