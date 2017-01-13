program uni;
const N = 10;
var
a: array [1..N] of integer;
i, k: integer;
begin
k := 0;
for i := 1 to N do
    readln (a[i]); 
for i := 1 to N - 1 do 
    if (a[i] + a[i+1] < 0) and ((a[i] + a[i+1]) mod 7 = 0) then k := k + 1;
writeln ('Количество пар элемментов массива, сумма которых кратна семи и отрицательна: 7', k);
end. 
