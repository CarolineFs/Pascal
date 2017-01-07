program uno;
const N = 5;
var
a: array [1..N] of integer;
i, j, k: longint;
begin
for i:=1 to N do begin
    write ('Введите элемент массива: ');
    readln (a[i]);end;
k:=0;
for i:=1 to N-1 do 
    if ((a[i]+a[i+1]) > 0) and ((a[i]*a[i+1]) mod 2 <> 0) then k:=k+1; 
writeln ('Количество пар соседних элементов массива, произведение которых нечетно, а сумма положительна:  ', k);
end. 
