with Ada.Text_IO; use Ada.Text_IO;
with Selection; use Selection;

procedure Main is
   A : Arr := (1, 5, 2, 4, 6, 88, 3);
   B : Arr := (2,5,1,3,8,4,6);
begin
   Sort(B);
   Put_Line(".-------------.");
   Sort(B);
   For I in B'Range loop

   Put(Integer'Image(B(I)) & "; ");
   end loop;
            end Main;
