(* Алгоритм находит и выводит на экран минимальное значение
среди трехзначных элементов массива, не делящихся на 20. *)
program roma;
const
    N = 30;
var
    a:array [1..N] of integer;
    i, min: integer;
begin
    for i := 1 to N do
        readln(a[i]);
    min := 1001; 
    for i := 1 to N do 
        if (a[i] div 100 > 0) and (a[i] div 1000 = 0) and (a[i] mod 20 <> 0) and (a[i] < min) then min := a[i];
    if min = 1001 then writeln('Не найдено.')
    else writeln (min);
end. 
