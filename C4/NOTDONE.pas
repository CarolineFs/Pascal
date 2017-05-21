var
   s: string;
   i, sum, code, x, p: integer;
   c: char;
begin
   s := ''; sum := 0;

   read(c);
   while c <> '.' do  begin
         while c <> ' ' do
           begin
            if (c = '0') or (c = '1') or (c = '2') or (c = '3') or (c = '4') then s:=s+c;
            read (c);
           end;
           
         val(s, i, code);
         writeln (i);
         p := 1;
         while i<>0 do
            begin
               sum:=sum+ (i mod 10)*p;
               p:=p*5;
               i:=i div 10;
            end;
    end;
writeln(sum);
end.
