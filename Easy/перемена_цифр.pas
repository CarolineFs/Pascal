Program u;
var a, b, c, d: integer;
begin
writeln ('Введите целое положительное трехзначное число: ');
readln (a);
if (a>=100) and (a<=999) then begin
    b:= a div 100;
    d:= a mod 10;
    c:= (a div 10) mod 10;
    a:=d*100+c*10+b;
    writeln (a);
    end
    else writeln ('Это не целое положительное трехзначное число!');
end. 
