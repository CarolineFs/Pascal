Program u;
var x, y, x1, y1: real;
begin
writeln('Введите координату x первой точки: ');
readln(x); 
writeln('Введите координату y первой точки: ');
readln(y); 
writeln('Введите координату x первой точки: ');
readln(x1); 
writeln('Введите координату y первой точки: ');
readln(y1); 
if (sqr(x)+sqr(y)=sqr(x1)+sqr(y1)) then writeln ('Точки лежат на одной окружности с центром (0,0).')
else writeln ('Точки не лежат на одной окружности с центром (0,0).');
end. 
