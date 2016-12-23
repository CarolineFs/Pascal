Program u;
var a, s: integer;
begin
writeln ('Введите натуральное трехзначное число: ');
readln (a);
if a<0 then a:=a*-1;
if (a mod 10 = 7) or (a div 100=7) or ((a div 10) mod 10 = 7) then begin
    a:=a*a;
    writeln (a);
    end 
    else writeln ('Число не содержит цифры 7.');
end. 
