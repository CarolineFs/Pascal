(* Алгоритм находит и выводит минимальное значение среди положительных элементов массива, оканчивающихся на 5. *)
program roma; 
const
    N = 10;
var
    a: array [1..N] of integer;
    i, j, min: integer;
begin
    for i := 1 to N do
        readln (a[i]);
    min := 1001;
    for i := 1 to N do 
        if (a[i] > 0) and (a[i] mod 10 = 5) and (a[i] < min) then min := a[i];
    if (min = 1001) then writeln ('Not found')
    else writeln (min);
end.
        
