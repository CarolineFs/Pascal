Program n;
var a, b, c, P, S: real;
begin 
writeln ('Введите первую сторону треугольника: ');
readln (a);
writeln ('Введите вторую сторону треугольника: ');
readln (b);
writeln ('Введите третью сторону треугольника: ');
readln (c);
if (a < b+c) and (b < a+c) and (c < a+b) then begin
P:= a + b + c;
S:=  sqrt(P/2*(P/2-a)*(P/2-b)*(P/2-c));
writeln ('Периметр равен ', P);
writeln ('Площадь равна ', S);
end
else writeln ('Такого треугольника не существует');
end.
