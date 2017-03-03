(* Дан Квадратный массив. Найти сумму элементов, нахлодящихся в строке и столбце, 
на пересечении которых находится максимальный элемент массива. 
Заменить максимальный элемент полученной суммой. 
Вывести новый массив. *)

program ostwind;
const
    N = 3;
var
    a: array [1..N, 1..N] of integer;
    i, j, max, str_max, col_max, sum: integer;
begin
    for i := 1 to N do
        for j := 1 to N do
            readln (a[i, j]);
    writeln (a);
    max := a[1,1];
    str_max := 1;
    col_max := 1;
    for i := 1 to N do
        for j := 1 to N do
            if a[i, j] > max then
                begin
                    max := a[i,j];
                    str_max := i;
                    col_max := j;
                end;
    sum := 0;            
    for i := 1 to n do
        sum := sum + a[i, col_max];
    for j := 1 to N do
        sum := sum + a[str_max, j];
    sum := sum - max;
    a[str_max, col_max] := sum;
    writeln (a);
end.
