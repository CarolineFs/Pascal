(*На вход программе подаются сведения о сотрудниках некоторой огранизации.
В первой строке сообщается количество сотрудников N. 
Формат каждой из следующих N строк: 
    Фамилия должность стаж оклад премия
Программа выводит на экран фамилии, должность и стаж сотрудников с наибольшей зарплатой. 
Если среди остальных есть сотрудники с такой же зарплатой, что и один из этих трех, то выводятся и их фамилии, должности и стаж.*)
program one;
const
N = 1000;
var
kol, i, j, max1, max2, max3, M, k1, k2, k3: integer;
ZAR: array [1..N] of integer;
FIO: array [1..N] of string;
c: char;
begin
writeln ('Введите кол-во сотрудников: ');
readln (kol);
for i:=1 to kol do begin
    FIO[i]:='';
    repeat
        read(c);
        FIO[i]:=FIO[i]+c;
        until c=' ';
    FIO[i]:= FIO[i]+' ';
    repeat
        read(c);
        FIO[i]:= FIO[i]+c;
        until c=' ';
    FIO[i]:= FIO[i]+' ';
    repeat
        read (c);
        FIO[i]:=FIO[i]+c;
        until c=' ';
    ZAR[i]:=0;
    read (M);
    ZAR[i]:= ZAR[i]+M;
    read(M);
    ZAR[i]:= ZAR[i]+M;
    end;
if (ZAR [1] > ZAR [2]) and (ZAR [1] > ZAR [3]) then begin
    max1 := ZAR [1];
    k1 := 1;
    if (ZAR [2] > ZAR [3]) then begin
        max2 := ZAR[2];
        k2 := 2;
        max3 := ZAR[3];
        k3 := 3;
        end
    else 
        max2 := ZAR[3];
        k2 := 3;
        max3 := ZAR[2];
        k3 := 2;
    end  
else if (ZAR [2] > ZAR [1]) and (ZAR [2] > ZAR [3]) then begin
    max1 := ZAR [2];
    k1 := 2;
    if (ZAR [1] > ZAR [3]) then begin
        max2 := ZAR[1];
        k2 := 1;
        max3 := ZAR[3];
        k3 := 3;
        end
    else 
        max2 := ZAR[3];
        k2 := 3;
        max3 := ZAR[1];
        k3 := 1;
    end
else if (ZAR [3] > ZAR [1]) and (ZAR [3] > ZAR [2]) then begin
    max1 := ZAR [3];
    k1 := 3;
    if (ZAR [1] > ZAR [2]) then begin
        max2 := ZAR[1];
        k2 := 1;
        max3 := ZAR[2];
        k3 := 2;
        end
    else 
        max2 := ZAR[2];
        k2 := 2;
        max3 := ZAR[1];
        k3 := 1;
    end;
for i:=4 to kol do
    if ZAR[i] > max1 then begin 
        max3 := max2;
        k3 := k2;
        max2 := max1;
        k2 := k1;
        max1 := ZAR[i];
        k1 := i;
    end;
write (FIO[k1], ', ', FIO[k2], ', ', FIO[k3]);
for i := 1 to kol do 
    if ((ZAR[i] = max1) or (ZAR[i] = max2) or (ZAR[i] = max3)) and ((i <> k1) and (i <> k2) and (i <> k3)) then writeln (FIO[i]); 
      
end.
