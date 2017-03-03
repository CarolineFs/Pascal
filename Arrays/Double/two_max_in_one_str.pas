(* Дан двумерный массив.
Определить, есть ли в данном массиве строка, в которой имеется два максимальных элемента всего массива.*)

program ostwind;
const
    N = 3;
    M = 3;
var
    a: array [1..N, 1..M] of integer;
    i, j, max1, max2, str1, str2: integer;
begin
    for i := 1 to N do
        for j := 1 to M do
            readln (a[i, j]);
    if a[1,1] > a[2,1] then
        begin
            max1 := a[1,1];
            str1 := 1;
            max2 := a[2,1];
            str2 := 2;
        end
    else 
        max1 := a[2,1];
        str1 := 2;
        max2 := a[1,1];
        str2 := 1;
    for i := 1 to N do
        for j := 1 to M do
           if a[i, j] >= max1 then
                    begin
                        max2 := max1;
                        str2 := str1;
                        max1 := a[i, j];
                        str1 := i;
                    end;
    if str1 = str2 then writeln ('YES')
    else writeln ('NO');
end.   
