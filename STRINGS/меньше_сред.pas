(*Дана строка символов. 
Разбить строку на слова. 
Вывести в столбик слова меньгие среднего по длине. *)
program roma; 
 const
     N = 255;
 var
    s: string;
    word: array [1..N] of string;
    i, j, sum, t, l: integer;
begin
readln (s);
i := 1;
for j := 1 to length(s) do begin
    
    if (s[j] <> ' ') then word[i] := word[i] + s[j]
    else if s[j] = ' ' then 
        i := i + 1; 
end;
l := 0;
for t := 1 to N do begin
    if word[t] <> '' then l := l + 1;
    if word [t] = '' then break;
end;
sum := 0;
for t := 1 to l do 
    sum := sum + length(word[t]);
sum := sum div l;
for t := 1 to l do
    if (length(word[t]) < sum) then 
        writeln(word[t]);
end. 
