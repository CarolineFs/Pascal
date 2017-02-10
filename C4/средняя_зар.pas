(*На вход программе подаются сведения о сотрудниках некоторой огранизации.
В первой строке сообщается количество сотрудников N. 
Формат каждой из следующих N строк: 
    Фамилия должность стаж оклад премия
Программа подсчитывает среднюю зарплату сотрудников, стаж которых больше среднего по организации. *)
program one;
const
N = 1000;
var
kol, i, k, s, res, M: integer;
ZAR: array [1..N] of integer;
STA: array [1..N] of integer;
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
    STA[i]:=0;
    read (M);
    STA[i]:= STA[i]+M;
    read(M);
    ZAR[i]:= ZAR[i]+M;
    read(M);
    ZAR[i]:= ZAR[i]+M;
    end;
s:=0;
k:=0;
for i := 1 to kol do begin
    s := s + STA[i];
    k := k + 1;
    end;
s := s  div k;
k := 0;
res := 0;
for i := 1 to kol do 
    if STA[i] > s then begin
        k := k + 1;
        res := res + ZAR [i];
        end;
res := res div k;
writeln (res);
end. 
