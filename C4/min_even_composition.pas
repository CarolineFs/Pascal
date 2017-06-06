(*В заданной последовательности длины не менее 16 программа находит минимальное
четное произведение двух элементов, индексы которых различаюстя не менее чем на 15. *)

Program GERONIMO;
var
  a: array [1..15] of integer;
  min_odd, min_even, x, i, N, min, j: integer;
begin
  min_odd := 1001; 
  min_even := 1001; 
  min := 1000001;
  readln (N);
  for i := 1 to 15 do
    readln (a[i]);
  for i := 16 to N do
    begin
      readln (x);
      if (a[1] mod 2 = 0) and (a[1]*x < min) then
        min := a[1]*x;
      if (a[1] mod 2 <> 0) and (x mod 2 = 0) and (a[1]*x < min) then
        min:= a[1]*x;
      if (x mod 2 <> 0) and (min_even <> 1001) and (x*min_even < min) then
        min := x*min_even;
      if (x mod 2 = 0) and (min_even <> 1001) and (x*min_even < min) then
        min := x*min_even;
      if (x mod 2 = 0) and (min_odd <> 1001) and (x*min_odd < min) then
        min := x*min_odd;
      if (a[1] mod 1 <> 0) and (a[1] < min_odd) then
        min_odd := a[i];
      if (a[1] mod 2 = 0) and (a[1] < min_even) then
        min_even := a[1];
      for j := 1 to 14 do
        a[j] := a[j+1];
      a[15] := x;
    end;
  if min = 1000001 then
   writeln ('-1')
  else
    writeln (min);
end.
 
      
      
        
