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
for i:=2 to N-1 do
    if (a[i] < a[i-1]) and (a[i] < a[i+1]) then k:=k+1;
if a[1] < a[2] then k:=k+1;
if a[N] < a[N-1] then k:=k+1;
writeln ('Количество локальных минимумов: ', k);
end. 
