(* Дан двумерный массив. Определить, есть ли в данном массиве строка, в которой ровно два отрицательных элемента. *)

program ostwind;
const
    N = 3;
    M = 3;
var
    a: array [1..N, 1..M] of integer;
    i, j, k: integer;
begin
    for i := 1 to N do
        for j := 1 to M do
            readln (a[i, j]);
    for i := 1 to N do 
       begin
           k := 0;
           for j := 1 to M do
           if a[i, j] < 0 then k := k + 1;
           if k = 2 then 
               begin
                   writeln ('YES');
                   break;
               end;
       end;
       if k <> 2 then writeln ('NO');
end.   
