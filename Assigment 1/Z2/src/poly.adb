--pragma SPARK_Mode;
with Ada.Text_IO;
use  Ada.Text_IO;
package body Poly with SPARK_Mode is
      
   function Horner (X : Integer; A : Vector) return Integer is      
      result : Integer := 0;
      Z : Integer := 0 with Ghost;
   begin
      
      for_loop:
      for I in reverse A'Range loop


         result:=result*X+A(I);
         Z:=Z+(A(I)*(X**(I-A'First)));

         pragma Loop_Invariant(Z=((X**(I-A'First))*result));

      end loop for_loop;

      pragma Assert(Z=result);
      return result;
      
   end Horner;

end Poly;
