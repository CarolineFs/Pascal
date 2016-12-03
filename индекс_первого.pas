program X;
const N = 30;
var a: array [1..N] of integer;
i, p, s, sum: integer;
begin
i:=1;
p:=1;
readln (a[i]);
i:=2;
readln (a[i]);
s:=a[1]+a[2];
for i:=3 to N do begin
    readln (a[i]);
    sum:=a[i-1]+a[i];
    if sum>s then begin
        s:=sum;
        p:=i-1;
        end;
    end;
writeln ('Индекс: ', p);
end.
