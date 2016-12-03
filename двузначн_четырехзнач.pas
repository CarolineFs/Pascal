program n;
var i, j:integer;
begin
for i:= 10 to 99 do
    for j:=10 to 99 do
    if (i*100+j) mod (i+j)=0 then writeln (i, ' ',j);
end. 
