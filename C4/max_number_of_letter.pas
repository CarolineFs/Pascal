var
  max, flag: integer;
  c: char;
  a: array ['A'..'Z'] of integer;
begin
  for c:='A' to 'Z' do
    a[c]:=0;A
  read(c);
  while c<>'#' do
    begin
      if (upcase(c)>='A') and (upcase(c)<='Z') then
        a[upcase(c)]:=a[upcase(c)]+1;
     read(c);
    end;
  max:=-1;
  for c:='A' to 'Z' do
    if (a[c]>max) and (a[c]<>0) then max:=a[c]; 
  flag:=0;
  for c:='A' to 'Z' do
    begin
      if a[c]=max then 
        begin
          flag:=flag+1;
          if flag=1 then write(c)
          else if flag>1 then write(' ', c);
        end;
    end;
end.
