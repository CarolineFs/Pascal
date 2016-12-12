Program Uno;
var  a, s, i: integer;
begin
for i:=10 to 99 do 
    if ((i mod 10 = 3) or (i div 10 = 3)) and (i mod 3 = 0) then writeln (i);
end. 
