(* Программа выводит третье по величине значение измерения. Если такого нет, выводит №. 
В первой строке вводится количество измерений.  *)
program uno;
var
    i, N, max1, max2, max3, z: integer;
begin
    write ('Введите количество измерений: ');
    read (N); 
    max1 := -1; max2 := -1; max3 := -1;
    for i := 1 to N do 
        begin
            readln (z);
            if z > max1 then
                begin
                    max3 := max2;
                    max2 := max1;
                    max1 := z;
                end;
        end;
    if max3 = -1 then writeln('#')
    else writeln ('Третье по величине значение измерения: ', max3);
end.

            
