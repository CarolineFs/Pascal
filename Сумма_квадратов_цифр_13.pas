Program n;
var 
i: integer; 
begin
for i:= 10  to 99 do 
if (sqr(i div 10) + sqr (i mod 10)) mod 13 = 0 then writeln (i);
end.
