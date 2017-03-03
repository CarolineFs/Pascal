program ostwind;
var
    s: string;
    i, l: integer;
begin
    readln (s);
    i := 1;
    l := length (s);
    while i <= l do 
        
            if (s[i] = '0') or (s[i] = '1') or (s[i] = '2') or (s[i] = '3') or (s[i] = '4') or (s[i] = '5') or (s[i] = '6') or (s[i] = '7') or (s[i] = '8') or (s[i] = '9') then 
                begin 
                    delete (s, i, 1);
                    i := i + 1;
                    l := l - 1;
                end;
       
    writeln (s);
end.
