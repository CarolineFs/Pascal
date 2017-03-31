(* На вход программе подается последовательность цифр. 
Заканчивается точкой. 
Программа печатает цифры, встречающиеся в исходной последовательности, в порядке увеличения частоты их встречаемости. *)

program roma;
var
    a: array [0..9] of integer;
    b: array [1..81] of integer;
    s: string;
    i, k, x, j, l: integer;
begin
    readln (s);
    for i:=0 to 9 do
        a[i] := 0;
    for i:=1 to 81 do
        b[i] := 10;
    for i:= 1 to (length(s)-1) do
        begin
            val (s[i],x,k); 
            a[x] := a[x] + 1;
        end;
   
    l := 1;
    for j := 1 to 9 do
        for i := 0 to 9 do
            if a[i] = j then
                begin
                    b[l] := i;
                    l := l + 1;
                end;
for i := 1 to 81 do
    if b[i] <> 10 then writeln (b[i])
    else break;
    
end. 
