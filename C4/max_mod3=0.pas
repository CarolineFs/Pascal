(* Программе на вход подается последовательность из N чисел. 
После этого - котнтольное значение: максимальная сумма двух различных элементов последовательности кратная трем. 
Если в последовательности нет таких чисел - контрольное значение считается равным одному. 
Программа проверяет правильность контроьного значения. *)

program geronimo;
var
  x, i, max_30, max2_30, max_31, max_32, c_read, N, c_count: integer;
begin
  readln(N);
  max_30 := 0;
  max2_30 := 0;
  max_31 := 0;
  max_32 := 0;
  for i:=1 to N do
    begin
      readln (x);
      if (x mod 3 = 0) and (x > max_30) then
        begin
          max2_30 := max_30;
          max_30 := x;
        end
      else if (x mod 3 = 0) and (x < max_30) and (x > max2_30) then
        max2_30 := x;
      if (x mod 3 = 1) and (x > max_31) then
        max_31 := x;
      if (x mod 3 = 2) and (x > max_32) then
        max_32 := x;
    end;
  readln (c_read);
  if (max_30 <> 0) and (max2_30 <> 0) and (max_31 <> 0) and (max_32 <> 0) then
    begin
      if max_30 + max2_30 > max_31 + max_32 then 
        c_count := max_30 + max2_30
      else 
        c_count := max_31 + max_32;
    end
  else 
    begin
      if ((max_30 = 0) or (max2_30 = 0)) and (max_31 <> 0) and (max_32 <> 0) then
        c_count := max_31 + max_32;
      if ((max_31 = 0) or (max_32 = 0)) and (max_30 <> 0) and (max2_30 <> 0) then
        c_count := max_30 + max2_30;
      if ((max_30 = 0) or (max2_30 = 0)) and ((max_31 = 0) or (max_32 = 0)) then
        c_count := 1;
    end;
  writeln ('Вычисленное контрольное значение: ', c_count);
  if c_read = c_count then
    writeln ('Контроль пройден')
  else
    writeln ('Контроль не пройден');
end.
