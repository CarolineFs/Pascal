(* Дан двумерный массив. Определить, есть ли в данном массиве столбец, в котором имеются одинаковые элементы. *)

program ostwind;
const
    N = 3;
    M = 3;
var
    a: array [1..N, 1..M] of integer;
    i, j, t, k: integer;
begin
    for i := 1 to N do
        for j := 1 to M do
            readln (a[i, j]);
    k := 0;
    for j := 1 to M do 
       if k = 1 then break
       else
           begin
               for i := 1 to N - 1 do
               begin
                   for t := i + 1 to N do
                       if a[i, j] = a[t, j] then
                          begin
                              k := 1;
                              writeln ('YES');
                              break; 
                          end;
               if k = 1 then break; end;
           end;
       if k = 0 then writeln ('NO');
end.   
