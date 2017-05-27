var
   s: string;
   i, sum, code, p, flag: integer;
   c: char;
begin
   s := ''; sum := 0;
   flag := 0;
   repeat
     read (c);
       if (c = '0') or (c = '1') or (c = '2') or (c = '3') or (c = '4') and (flag = 0) then 
         s:=s+c;
       if (c <> '0') and (c <> '1') and (c <> '2') and (c <> '3') and (c <> '4') and (c <> ' ') and (c <> '.') then
         flag := 1;
       if (c = ' ') or (c = '.') then
         begin
           flag := 0; 
           val(s, i, code);
           p := 1;
           while i<>0 do
             begin
               sum:=sum+(i mod 10)*p;
               p:=p*5;
               i:=i div 10;
             end;
           s := '';  
         end;
   until c = '.';
  writeln (sum);    
end.
