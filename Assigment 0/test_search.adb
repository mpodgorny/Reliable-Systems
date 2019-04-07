with Linear_Search; use Linear_Search;
with Ada.Text_IO;   use Ada.Text_IO;

procedure Test_Search is
      Res : T;
      Aray : Ar := (1, 5, 3, 8, 8, 2, 0, 1, 0, 4);
begin
   Res := Search (Aray, 1);
   if Res /= -1 then
      Put_Line("Found value 1 at " & T'image(Res));
   else
      Put_Line("Did not found value 1.");
   end if;
end Test_Search;
