Program i;
var 
p, b,s: integer;
begin
s:=1;
p:=1;
for b:=1 to 10 do begin
    p:=2*p;
    s:=s+p;
    end;
writeln (s);
end. 
