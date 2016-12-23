Program u;
const N = 10;
var s, a, i: integer;
begin
for i:=1000 to 9999 do 
    if ((i mod 10)+((i div 10) mod 10)+((i div 100) mod 10)+(i div 1000))<=N then writeln (i);
end. 
