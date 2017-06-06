(*Программа вычисляет наибольшее произведение двух элементов последовательности, кратное 21. *)

Program GERONIMO;
var
  N, x, i, R, max7, max3, max37, max37_2: integer;
begin
  readln (N);
  R := 0;
  max3 := 0;
  max7 := 0;
  max37 := 0;
  for i := 1 to N do
    begin
      read (x);
      if (x mod 3 = 0) and (x mod 7 <> 0) then
        if x > max3 then
          max3 := x;
      if (x mod 7 = 0) and (x mod 3 <> 0) then
        if x > max7 then
          max7 := x;
      if (x mod 3 = 0) and (x mod 7 = 0) then
        if x > max37 then
          begin
            max37_2 := max37;
            max37 := x;
          end
        else
          if (x < max37) and (x > max37_2) then
            max37_2 := x;
    end;
  readln (x);
  if (max3*max7 > max37*max37_2) and (max3*max7 > max3*max37) and (max3*max7 > max7*max37) then
    R := max3*max7
  else
    if (max37*max37_2 > max3*max7) and (max37*max37_2 > max3*max37) and (max37*max37_2 > max7*max37) then
      R := max37*max37_2
    else
      if (max3*max37 > max3*max7) and (max3*max37 > max37*max37_2) and (max3*max37 > max7*max37) then
        R := max3*max37
      else
        if (max7*max37 > max3*max7) and (max7*max37 > max37*max37_2) and (max7*max37 > max3*max37) then
          R := max3*max37;
  writeln ('Вычисленное контрольное значение: ', R);
  if x = R then
    writeln ('Контроль пройден')
  else
    writeln ('Контроль не пройден');
end.
    
  
