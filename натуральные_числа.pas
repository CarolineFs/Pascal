Program i;
var 
N, b: integer;
begin
writeln ('Введите натуральное число');
readln (N);
for b:=1 to N do
    if (b mod 2=0) or (b mod 3=0)  or (b mod 5= 0) then continue
    else writeln (b);
end. 
