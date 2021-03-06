(* По каналу связи передаются положительные целые числа, не превышающие 1000, 
их количество заранее неизвестно. 
Каждое число передается отдельно.
Признаком конца передаваемой последовательности является число 0.
После числа 0 передается контрольное значение – наибольшее число R, удовлетворяющее следующим условиям:
 
1) R — произведение двух различных переданных элементов последовательности («различные» означает, что нельзя просто удваивать переданные числа,
суммы различных, но равных по величине элементов допускаются);
2) R делится на 6.
 
 Программа получает последовательность чисел и следующие за ней признак конца и контрольное значение
 и проверяет правильность контрольного значения. *)

program roma; 
var
max_2, max_3, max_6, max, R, x, k, max_control: integer;
begin
    max_2 := 0; 
    max_3 := 0;
    max_6 := 0;
    max := 0;
    x := -1;
    k := 0;
    while (x <> 0) do 
        begin
        readln (x);
        k := k +1;
        if (x mod 2 = 0) and (x > max_2) then max_2 := x;
        if (x > max) then max := x;
        if (x mod 6 = 0) and (x > max_6) then max_6 := x;
        if ( x mod 3 = 0) and (x > max_3) then max_3 := x;
        end; 
    k := k - 1;
    readln (R);
    max_control := max_2 * max_3;
    if (max * max_6 > max_control) then max_control := max * max_6;
    if (max_control <> 0) and (max_control = R) then
        begin
        writeln ('Получено ', k, ' чисел');
        writeln ('Полученное контрольное значение: ', R);
        writeln ('Вычисленное контрольное значение: ', max_control);
        writeln ('Контроль пройден');
        end
    else if (max_control <> 0) and (max_control <> R) then
        begin
        writeln ('Получено ', k, ' чисел');
        writeln ('Полученное контрольное значение: ', R);
        writeln ('Вычисленное контрольное значение: ', max_control);
        writeln ('Контроль не пройден');
        end;
end. 
