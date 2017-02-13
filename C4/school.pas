program one;
const
N = 99;
var
SCHOOL: array [1..N] of integer;
min, kol, M, i: integer;
c: char;
begin
writeln ('Введите количество учащихся: ');
readln (kol);
for i := 1 to N do
    SCHOOL[i] := 0;
for i := 1 to kol do begin
    repeat
        read (c);
        until c = ' ';
    repeat
        read (c);
        until c = ' ';
    read (M);
    SCHOOL[M] := SCHOOL[M] + 1;
    end;
min :=  1000;
for i := 1 to N do
      if (SCHOOL [i] < min) and (SCHOOL[i] <> 0) then min := SCHOOL [i];
for i := 1 to N do
      if SCHOOL [i] = min then writeln (i);
end.
