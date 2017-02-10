Program u;
var n, s1, s2, a: integer;
begin
writeln ('Введите максимальное число последовательности: ');
readln (n);
s2:=0;
s1:=0;
for a:=1 to n do begin
    if a mod 2 = 0 then s2:=s2+a
    else if a mod 2 <> 0 then s1:=s1+a;
    end;
writeln ('Сумма нечетных чисел: ', s1, '. Сумма четных чисел: ', s2);
end. 
