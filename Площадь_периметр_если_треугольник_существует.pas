Program n;
var a, b, c, P, S: real;
begin 
writeln ('Введите первую сторону треугольника');
readln (a);
writeln ('Введите вторую сторону треугольника');
readln (b);
writeln ('Введите третью сторону треугольника');
readln (c);
if a > b+c then writeln ('Такого  треугольника не существует');
if b > a+c then writeln ('Такого  треугольника не существует')
else writeln ('Такого  треугольника не существует'); 
exit; 
P:=a+b+c;
s:= sqrt(P/2*(P/2-a)*(P/2-b)*(P/2-c));
writeln ('Периметр равен ',P,'; площадь равна ', S);
end. 
