Program u;
var n, a, s, ar: integer;
sr: real;
begin
writeln ('Введите максимальную сумму цифр от 1 до 45: ');
readln (n);
s:=0;
ar:=0;
for a:=10000 to 32000 do begin
    if (a mod 10)+((a div 10) mod 10)+((a div 100)mod 10)+((a div 1000)mod 10)+(a div 10000)=n then begin 
        writeln (a);
        s:=s+a;
        ar:=ar+1;
        end;
    end;
sr:=s/a;
write ('Среднее арифметическое: ');
write(sr:10:5);
end. 
