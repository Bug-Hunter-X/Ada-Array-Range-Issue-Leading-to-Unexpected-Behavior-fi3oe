procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0);
   Array_Size : constant Integer := My_Arr'Last;
begin
   for I in 1..Array_Size loop
      My_Arr(I) := I * 2;
   end loop;
   for I in 1..Array_Size loop
      Ada.Text_IO.Put_Line(Integer'Image(My_Arr(I)));
   end loop;
end Example_Solution; 