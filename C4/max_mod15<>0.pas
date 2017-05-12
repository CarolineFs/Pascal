program BadWolf;
var
  i,N, a, res, max, max_2, max3, max3_2, max5, max5_2: integer;
begin
readln(N);
max:=0; max_2:=0; max3:=0; max3_2:=0; max5:=0; max5_2:=0;
for i:=1 to N do
  begin
    readln (a);
    if (a mod 5 <>0) and (a mod 3<>0) then 
      if a > max then
        begin
          max_2:=max;
          max:=a;
        end
      else if a > max_2 then max_2:=a;
    if (a mod 5 <>0) and (a mod 3=0) then 
      if a > max3 then
        begin
          max3_2:=max3;
          max3:=a;
        end
      else if a > max3_2 then max3_2:=a;
    if (a mod 5=0) and (a mod 3<>0) then 
      if a > max5 then
        begin
          max5_2:=max5;
          max5:=a;
        end
      else if a > max5_2 then max5_2:=a;
    end;
    res:=max*max_2;
    if max*max3 > res then res:=max*max3;
    if max*max5 > res then res:=max5*max5;
    if max5*max5_2 > res then res:=max5*max5_2;
    if max3*max3_2 > res then res:=max3*max3_2;
    writeln(res);
  end.
