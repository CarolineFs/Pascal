(*Необходимо определить, числа какой длины реже всего (но не менее одного раза) встречаются в данном наборе и сколько в нём чисел этой длины. 
Если числа разной длины встречаются одинаково часто (и реже, чем числа любой другой длины), нужно выбрать меньшую длину. *)

var
  len: array [1..10] of integer;
  N, i, minlen, mincount: integer;
  s: string;
begin
  readln (N);
  for i := 1 to N do
    len[i] := 0;
  for i := 1 to N do
    begin
      readln (s);
      len[length(s)] := len[length(s)] + 1;
    end;
  mincount := N + 1;  
  for i := 1 to N do
    if (len[i] <> 0) and (len[i] < mincount) then
      begin
        mincount := len[i];
        minlen := i;
      end;
  writeln (minlen, ' ', mincount);
end.
