program p;
const N = 10;
var a: array [1..N] of integer;
s, i, b: integer;
begin
s:=0;
b:=0;
for i:=1 to N do begin
readln (a[i]);
if (a[i]>=-15) and (a[i]<=20) then
s:=s+a[i];
b:=b+1;
end; 
writeln (s/b);
end.
