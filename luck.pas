Program six; 
var a: integer;
begin
writeln('Введите шестизначное число: ');
readln (a);
if ((a mod 10)+((a div 10) mod 10)+((a div 100) mod 10)) = ((a div 100000))+((a div 10000) mod 10)+ ((a div 1000) mod 10) then writeln ('Число счастливое')
else writeln ('Число не счастливое');
end. 
