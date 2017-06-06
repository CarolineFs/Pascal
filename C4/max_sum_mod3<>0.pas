(* Программе на вход подаются пары целых положительных чисел. Из каждой пары выбирается одно число так, 
чтобы сумма всех выбранных чисел была максимальной и не делилась на 3.
Если такое не возможно, сумма считается равной 0.
Первая строка - количество пар. *)

Program GERONIMO;
var
  N, x, y, i, s, D_min: integer;
begin
  readln (n);
  s:= 0;
  D_min := 10001;
  for i := 1 to N do
    begin
      read (x, y);
      if x > y then
        begin
          s := s + x;
          if (x - y < D_min) and (x - y mod 3 <> 0) and (x - y <> 0)then
            D_min := x - y;
        end
      else
        begin
          s := s + y;
          if (y - x < D_min) and (y - x mod 3 <> 0) and (y - x <> 0) then
            D_min := y - x;
        end;
    end;
  if s mod 3 <> 0 then
    writeln (s)
  else
    if D_min <> 10001 then
      writeln (s-D_min)
    else
      writeln ('0');
end.
    
