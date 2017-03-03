program ostwind;
var
    s: string;
begin
    readln (s);
    if length(s) mod 2 <> 0 then delete (s, length(s) div 2, 1);
    writeln (s);
end.
