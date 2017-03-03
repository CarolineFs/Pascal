program ostwind;
var
  s:string;
  i:integer;
begin
    readln(s);
    while (pos('del',s)<>0) do
    begin
        i:=pos('del',s);
        delete(s,i,3);
        insert('insertr',s,i);
    end;
    writeln(s);
end.
