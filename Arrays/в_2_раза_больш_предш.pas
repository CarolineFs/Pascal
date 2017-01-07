program uno;
const N = 6;
var
a: array [1..N] of integer;
i, j, k: integer;
begin
for i:=1 to N do begin
    write ('Введите элемент массива: ');
    readln (a[i]); end;
k:=0;
for i:=2 to N do
    if (a[i]>a[i-1]*2) then k:=k+1;
writeln ('Количество элементов массива, значение которых более чем в два раза превосходит значение предшествующего элемента: ', k);
end. 
