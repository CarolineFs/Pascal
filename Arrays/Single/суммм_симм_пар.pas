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
j:= N div 2;
for i:=1 to j do 
    if ((a[i]+a[N-i+1]) > 20) then k:=k+1;
writeln('Количество симметричных пар, у которых сумма элементов больше 20: ', k);
end. 
