program p;
const N = 10;
var a: array [1..N] of integer;
i, b: integer;
begin
i:=1;
readln (a[i]);
a[i]:=b;
for i:=2 to N do begin
readln (a[i]);
if a[i]>b then
b:=a[i]; 
end; 
writeln (b);
end.
