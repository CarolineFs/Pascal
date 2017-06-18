(* Программа выводит количество пар чисел, сумма которых кратна 12.
Первая строка - количество чисел. *)

var
  rem: array [0..11] of integer;
  N, i, count, x: integer;
begin
  readln (N);
  for i := 1 to N do
    begin
      readln (x);
      inc (rem[x mod 12]);
    end;
  count := (rem[0]*(rem[0] - 1) + rem[6]*(rem[6] - 1)) div 2;
  for i := 1 to 5 do
    count := count + rem[i]*rem[12-i];
  writeln (count);
end.
