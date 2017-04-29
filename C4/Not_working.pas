var
a:array[1..99,1..100] of integer;
c: char;
x, y, i, j, flag, N: integer;
begin
  readln (N);
  for i:=1 to 99 do
    for j:=1 to 100 do 
      a[i,j]:=0;
  for i:=1 to N do
  begin
    repeat
      read(c);
    until c=' ';
    repeat
      read(c);
    until c=' ';
    read(x,y);
    a[x,y]:=a[x,y]+1;
  end;
  flag:=0;
  for i:=1 to 99 do
    begin
      N:=0;
      for j:=1 to 100 do
        begin
          if a[i,j]>N then N:=a[i,j];
          if flag=0 then
            begin
              x:=i;
              y:=j;
            end;
          flag:=flag+1;
          if (N>2) and (flag>2) then writeln (i);
          end;
    end;
  if flag=0 then writeln('Нет таких школ.')
  else if flag=1 then writeln(x, '\n', 'Наибольший балл = ', y);
end. 
