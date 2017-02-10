program X;
const N = 10;
var a: array [1..N] of integer;
i,d , b, c, s, sum: integer;
begin
i:=1;
readln (a[i]);
b:=a[1];
i:=2;
readln (a[i]);
c:=a[2];
i:=3;
readln (a[i]);
d:=a[3];
s:=a[1]+a[2]+a[3];
for i:=4 to N do begin
    readln (a[i]);
    sum:=a[i-2]+a[i-1]+a[i];
    if sum>s then begin
        s:=sum;
        b:=a[i-2];
        c:=a[i-1];
        d:=a[i];
        end;
    end;
writeln ('Элементы,чья сумма максимальна: ', b,' ' , c, ' ', d,' ');
end.
