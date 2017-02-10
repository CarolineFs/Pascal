Program Sum;
var a, b, k, s: integer;
begin
writeln ('Введите натуральное число: ');
readln (k);
s:=0;
for a:=1 to k-1 do begin
    for b:=1 to k-1 do 
        if (a+b<k) then s:=s+1;
    end;
print (s);
end. 
