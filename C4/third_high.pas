(* На вход прогграмме подаются целые числа. 
Программа выводит третье по величине значение. 
Если таких нет - "#". *)
Program GERONIMO;
var
  N, max1, max2, flag2, max3, flag3, x, i: integer;
begin
  readln (N);
  read (max1);
  flag2 := 0;
  flag3 := 0;
  for i := 1 to N-1 do
    begin
      read (x);
      if x > max1 then
        begin
          max3 := max2;
          max2 := max1;
          max1 := x;
        end;
      if (x < max1) and (flag2 = 0) and (flag3 = 0) then
        begin
          max2 := x;
          flag2 := 1;
        end;
      if (x < max2) and (flag3 = 0) and (flag2 = 1) then
        begin
          max3 := x;
          flag3 := 1;
        end;
      if (x < max1) and (x > max2) and (flag2 = 1) then
        begin
          max3 := max2;
          max2 := x;
          flag3 := 1;
        end;
      if (x < max2) and (x > max3) and (flag2 = 1) then
        begin
          max3 := x;
          flag3 := 1;
        end;
    end; 
  if (flag2 = 1) and (flag3 = 1) then
    writeln (max3)
  else
    writeln ('#');
end.
    
       
