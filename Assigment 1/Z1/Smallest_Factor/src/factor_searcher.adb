pragma SPARK_Mode;
package body Factor_Searcher  with SPARK_Mode is
   
   procedure Smallest_Factor (N : in out Positive; Factor : out Positive) is
   begin
      
      Factor := 1;
      for_loop:
      for I in Positive range 2 .. N loop
         
         pragma Loop_Invariant (for all J in 2 .. I-1 => N rem J /= 0);
        
         Factor := I;      
         exit for_loop when N rem Factor = 0;
              
      end loop for_loop;
      pragma Assert(Factor in 2 .. N);
      N := N/Factor;
   
   end Smallest_Factor;

end Factor_Searcher;
