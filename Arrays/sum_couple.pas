(* Дан массив, содержащий 70 неотрицательных целых чисел, не превышающих 1000.
Алгоритм позволяет найти и вывести наименьшею сумму двух соседних элементов массива, имеющих одинаковую четность.
Гарантируется наличие двух таких элементов. *)

program ostwind;
const
    N = 70;
var
    a: array [1..N] of integer;
    i, min: integer;
begin
    min := 2001;
    for i := 1 to N do
        readln (a[i]);
    for i := 1 to N - 1 do
        if (((a[i] mod 2 = 0) and (a[i+1] mod 2 = 0)) or ((a[i] mod 2 <> 0) and (a[i+1] mod 2 <> 0))) and (a[i] + a[i+1] < min) then min := a[i] + a[i+1];
   writeln ('Наименьшая сумма двух соседних элементов массива, имеющих одинаковую четность: ', min);
end. 
