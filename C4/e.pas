(* Программа вычисляет количество значительных подъемов. 
Подъем значительный, если высота подъема больше величины минимального (первого) элемента этого подъема *)
var
   k, x, y, min, kp: integer;
begin
  readln(x);
  min:=x;
  k:=1;
  kp:=0;
    while x<>0 do
       begin
         y:=x;
         readln(x);
         
         if x<>0 then k:=k+1;
         if x<y then 
          begin
           if y-min>min then kp:=kp+1;
            min:=x;
          end;
            
          
       end; 
  writeln ('Получено чисел: ', k);
  writeln ('Найдено значительных подъемов: ', kp);
end. 
