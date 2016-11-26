Program i;
var 
n, b: integer; s:real;
begin
s:=0;
writeln ('Введите действительное число');
readln (n);
for b:=1 to n do 
    s:=s + 1/b;
writeln (s);
end. 
