Program u;
var a,s: integer;
begin
writeln ('Введите целое положительное двузначное число: ');
readln (a);
if (a>=10) and (a<=99) then begin
    s:=(a mod 10)+(a div 10);
    writeln (s);
    end
    else writeln ('Это не целое положительное двузначное число!');
end. 
