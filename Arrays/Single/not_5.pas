(* Максимальный положительный элемент, не заканчивающийся на 5. *) 
program uno;
const
    N = 10;
var
    a: array [1..N] of integer;
    i, j, max: integer;
begin
    for i := 1 to N do 
        readln (a[i]);
    max := -1001;
    for i := 1 to N do
        if (a[i] > 0) and (a[i] mod 10 <> 0) and (a[i] > max) then max := a[i];
   if max = -1001 then writeln ('NOT FOUND!')
   else writeln (max);
end. 
