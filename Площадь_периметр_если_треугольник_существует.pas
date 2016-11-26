Program n;
var a, b, c, P, S: real;
begin 
writeln ('Введите первую сторону треугольника: ');
readln (a);
writeln ('Введите вторую сторону треугольника: ');
readln (b);
writeln ('Введите третью сторону треугольника: ');
readln (c);
if a < (b+c) then 
    begin
    if b < (c+a) then 
       if c < (a+b) then
       P:= a + b + c;
       S:=  sqrt(P/2*(P/2-a)*(P/2-b)*(P/2-c));
       writeln ('Периметр равен ', P);
       writeln ('Площадь равна ', S) 
    end               
else    
writeln ('Такого треугольника не существует')
end. 
