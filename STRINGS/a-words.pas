(* Дана строка, состоящая из нескольких слов,
между словами стоит один пробел, в конце предложения - точка. 
Подсчитать число слов и вывести на экран только те из них, которые начинаются с буквы "а". *)

program roma; 
 const
     N = 255;
 var
    s, wrd: string;
    words: array [1..N] of string;
    i, j, l: integer;
begin
    readln (s);
    i := 1;
    for j := 1 to length(s) do 
        begin
            if (s[j] <> ' ') and (s[j] <> '.') then words[i] := words[i] + s[j]
            else if s[j] = ' ' then 
                i := i + 1; 
        end;
    l := 0;
        for j := 1 to N do 
            begin
                if words[j] <> '' then l := l + 1;
                if words [j] = '' then break;
            end;
    for j := 1 to l do 
        begin
            wrd := words[j];
            if (wrd[1] = 'A') or (wrd[1] = 'a') then writeln (words[j]);
        end;
    writeln (i, ' word(s) in your string. ');
end.
