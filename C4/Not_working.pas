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
  N:=0;
  for i:=1 to 99 do
    begin

      for j:=100 downto 1 do

          if (a[i,j]>0) then 
            begin
              if a[i,j]>2 then 
                begin
                  flag:=flag+1;
                  if flag=1 then  
                    begin
                      x:=i; 
                      y:=j; 
                    end; 
                end
              else 
                begin
                  if N=0 then 
                    begin
                      write(x); N:=N+1; 
                    end;
                  write (i, ' ');
                end;
              break; 
            end;
    end;


  if flag=0 then writeln('Нет таких школ.')
  else if flag=1 then 
    begin
      writeln (x);
      writeln('Наибольший балл = ', y); 
    end;
end.
