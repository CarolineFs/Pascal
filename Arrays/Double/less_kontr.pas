(* Дан двумерный массив, заполненный целыми числами с клавиатуры.
Сформировать одномерный массив, каждый элемент которого равен количеству элементов соответствующей строки, 
больших заданного числа. *)

program ostwind;
const
    N = 3;
    M = 3;
var
    a: array [1..N, 1..M] of integer;
    res: array [1..N] of integer;
    i, j, max: integer;
begin
    for i := 1 to N do
        for j := 1 to M do
            readln (a[i, j]);
    write ('Введите контрольное число: ');
    readln (max); 
    for i := 1 to N do 
        begin
            res[i] := 0;
        for j := 1 to M do
            if a[i, j] > max then res[i] := res[i] + 1;
        end;
    writeln (res);
end.   
