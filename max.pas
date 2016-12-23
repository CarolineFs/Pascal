Program u;
var a, t: integer;
begin
writeln ('Введите  целое число: ');
readln (a);
if a < 0 then a:=a*-1;
t:=a mod 10;
a:=a div 10;
while (a div 10)>0 do begin
    if (a mod 10)>t then t:=a mod 10;
    a:=a div 10;
    end;
writeln (t);
end. 
