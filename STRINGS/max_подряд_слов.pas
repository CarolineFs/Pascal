(*Дана строка символов. 
Разбить строку на слова. 
Определить максимальное количество идущих подряд слов в строке. *)
program roma; 
 const
     N = 255;
 var
    s: string;
    word: array [1..N] of string;
    i, j, k, k_max, i_i, l: integer;
begin
readln (s);
k := 0;
for i := 1 to length(s) do
    if s[i] = ' ' then k := k + 1;
i := 1;
for j := 1 to length(s) do begin
    
    if (s[j] <> ' ') then word[i] := word[i] + s[j]
    else if s[j] = ' ' then 
        i := i + 1; 
end;
l := 0;
for i_i := 1 to N do begin
    if word[i_i] <> '' then l := l + 1;
    if word [i_i] = '' then break;
end;
k_max := 0;
k := 0;
for i_i := 1 to l do begin
    if word[i_i] = word[i_i + 1] then k := k + 1;
    if word [i_i] <> word[i_i + 1] then begin
        if k > k_max then k_max := k;
        k := 0;
    end;
    end;
print(k_max+1);
end. 
