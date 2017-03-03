(* Дан двумерный массив, заполненный целыми числами с клавиатуры. 
Сформировать одномерный массив, каждый элемент которого равен количеству отрицательных элементов,
кратных 3 или 5, соответствующей строки. *)

program ostwind;
const
    N = 3;
    M = 3;
var
    a: array [1..N, 1..M] of integer;
    res: array [1..N] of integer;
    i, j: integer;
begin
    for i := 1 to N do
        for j := 1 to M do
            readln (a[i, j]);
    for i := 1 to N do 
        begin
            res[i] := 0;
        for j := 1 to M do
            if (a[i, j] < 0) and ((a[i,j] mod 3 = 0) or (a[i,j] mod 5 = 0))  then res[i] := res[i] + 1;
        end;
    writeln (res);
end.  
