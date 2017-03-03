program uno;
const N = 10;
var
a: array [1..N] of integer;
i, j, min: integer;
begin
min:=0;
for i:=1 to N do begin
    write ('Введите элемент массива: ');
    readln (a[i]);end;
while min=0 do begin 
    for i:=1 to N do 
        if (a[i] mod 2 <> 0) and (a[i] mod 5 = 0) then min:=a[i]; end; 
for i:=1 to N do begin
    if (a[i] mod 2 <> 0) and (a[i] mod 5 = 0) then j:=a[i];
    if j<min then min:=j; end;  
writeln ('Минимальный нечетный элемент ммассива, который делится на пять: ', min);
end. 
    
