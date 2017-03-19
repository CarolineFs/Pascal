const
    N = 10;
var
    s, min, c: string;
    i, t, Kmin, l, x: integer;
    words: array [1..N] of string;
begin
    readln (s);
    
    t := 1;
    for i := 1 to length(s) do
        begin

        if s[i] <> ' ' then words[t] := words[t] + s[i]
        else t := t + 1;
        end;
    l := 0;
    for i := 1 to N do
        if words[i] <> '' then l := l + 1
        else break;

    for i := 1 to l-1 do
        begin
        min := words[i];
        Kmin := i;
        for x := i+1 to l do
            begin
            if length(words[x]) < length(min) then
                begin
                    min := words[x];
                    Kmin := x;
                end;
            end;
        c := words[i];
        words[i] := min;
        words[Kmin] := c;
        end;
    for i := 1 to l do
        writeln (words[i]);

end.
