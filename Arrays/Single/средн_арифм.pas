program uno;
const N = 10;
var
a: array [1..N] of integer;
i, x, y: integer;
s: real;
begin
x:=0;
y:=0;
for i:=1 to N do begin
    write ('Введите элемент массива: ');
    readln (a[i]);end;
for i:= 2 to N do begin
    if (a[i] > 0) and (a[i] mod a[1] = 0) then begin
        x:=x+a[i];
        y:=y+1; end;
    end;
s:=x/y; 
writeln ('Среднее арифметическое всех положительных чисел, кратных первому элементу массива: ', s:6:4);
end. 
