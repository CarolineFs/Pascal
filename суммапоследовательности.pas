program p;
const N = 10;
var a: array [1..N] of integer;
s, i: integer;
begin
for i:=1 to N do
readln (a[i]);
s:= 0;
for i:=1 to N do
s:=s+a[i];
writeln (s);
end.
