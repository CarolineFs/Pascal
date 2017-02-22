(* Дана строка символов. Разбить строку на слова.
Вывесли все слова в столбик, выравнивая по правому краю. *)
program roma; 
 const
     N = 255;
 var
    s: string;
    word: array [1..N] of string;
    i, j, t, max_len, l, len_word: integer;
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
max_len := 0;
for t := 1 to l do
    if (length(word[t]) > max_len) then max_len := length(word[t]);
for t := 1 to l do 
    if (length(word[t]) < max_len) then begin
        len_word := length(word[t]);
        while len_word < max_len do begin
            word[t] := ' '+word[t];
            len_word := len_word + 1; end; end; 
for t := 1 to l do
    writeln (word[t]);
end. 
       
