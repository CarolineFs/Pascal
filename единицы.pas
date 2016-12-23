Program u;
var a, b, c, s: integer;
begin
writeln ('Введите целое положительное двузначное число: ');
readln (a);
if (a>=10) and (a<=99) then begin
    b:=a div 10;
    c:=a mod 10;
    s:=1000+b*100+c*10+1;
    writeln (s);
    end
    else writeln ('Это не целое положительное двузначное число!');
end. 
