Program i;
var 
E, b,s: integer;
begin
E:=2;
s:=1;
for b:=1 to 10 do 
    s:=s+Exp(b);
writeln (s);
end. 
