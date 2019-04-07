with Ada.Text_IO;
use  Ada.Text_IO;
with Poly; use Poly;

procedure Main is
   A : Vector := (-1,2,-6,2);
   X: Integer := 3;
begin
   Put_Line("-1 + 2x -6x^2 + 2x^3");
   Put_Line("--------------------------------------");
   for I in -10 .. 10 loop
      Put_Line("X value: " & Integer'Image(I) & " Function returns: " & Integer'Image(Horner(I,A)));
      Put_Line("--------------------------------------");
      end loop;
   null;
end Main;
