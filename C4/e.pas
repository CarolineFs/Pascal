var
   i, k, x, y, min, kp: integer;
begin
  readln(x);
  y:=x;
  min:=x;
  k:=1;
    while x<>0 do
       begin
         readln(x);
         k:=k+1;
         if x<y then
           begin
             if x-y>min then kp:=kp+1;
             min:=x;
             y:=x;
