with Factor_Searcher;
use Factor_Searcher;
with Ada.Text_IO;   use Ada.Text_IO;

procedure Main is
   smh : Positive;
   N : Positive;
begin
   for_loop:
   for I in Positive range 2 .. 101 loop
      N := I;
      Smallest_Factor(N, smh);
      Put_Line("For " & Integer'Image(I) & "smallest factor is - " & Integer'Image(smh));
      end loop for_loop;
end Main;
