program uno;
const N = 5;
var
a: array [1..N] of integer;
i, j, k, imax, kmax: integer;
begin
kmax:=0;
j:=0;
for i:=1 to N do begin
    write ('Введите элемент массива: ');
    readln (a[i]);end;
imax:=1;
for k:=1 to a[1] do begin
    if (a[1] mod k = 0)then kmax:=kmax+1;end;
for i:=2 to N do begin
    for k:= 1 to a[i] do begin
        if (a[i] mod k = 0) then j:=j+1;end; 
    if j>kmax then begin 
        kmax:=j;
        imax:=i;end;
        j:=0; end;
writeln ('Номер элемента с максимальным количеством целочисленных делителей: ', imax);
end. 
