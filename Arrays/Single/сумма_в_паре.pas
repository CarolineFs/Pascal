program uno;
const N = 10;
var
a: array [1..N] of integer;
i, j, k: longint;
begin
for i:=1 to N do begin
    write ('Введите элемент массива: ');
    readln (a[i]);end;
k:=0;
for i:=1 to N-1 do 
    if ((a[i]+a[i+1]) mod 2  = 0) and ((a[i]+a[i+1]) mod 4  <> 0) then k:=k+1; 
writeln ('Количество пар элементов массива, в которых сумма элементов делится на 2, но не делится на 4: ', k);
end. 
