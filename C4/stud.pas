(*К ранней сдаче экзаменов допускаются учащиеся, набравшие по результатам тестирования не менее 30 баллов по каждой из трех тем.
Общее количество участников тестирования не превосходит 300.
Необходимо обеспечить ввод данных в программу.
При этом в первой строке вводится количество студентов, принимавших участие в тестировании (N).
Далее следуют N вводимых строк, имеющих следующий формат:
    Фамилия Имя Балл Балл Балл
Программа выводит на экран фамилии и имена студентов, допущенных к ранней сдаче экзаменов. *)
program stud;
const N = 300;
var
kol, i, M: integer;
FIO: array [1..N] of string;
B1: array [1..N] of integer;
B2: array [1..N] of integer;
B3: array [1..N] of integer;
c: char;
begin
writeln ('Введите количество студентов: ');
read (kol);
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
    read (M);
    B1[i]:= M;
    read(M);
    B2[i]:= M;
    read(M);
    B3[i]:= M;
    end;
for i := 1 to kol do
    if (B1[i] >= 30) and (B2[i] >= 30) and (B3[i] >= 30) then writeln (FIO[i])    
end.
