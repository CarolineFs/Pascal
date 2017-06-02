(* Программа определяет двух учеников из 50 школы с наибольшим баллом.
Если учеников с наибольшим баллом больше 2, печатает их количество. 
Если один набрал наибольший, один второй максимум - печатает их фамилии.
Если один набрал наибольший, а второй максимум у двух и более человек, печатает одного. *)
Program Geronimo;
var
  c: char;
  S, Smax, Smax2: string [52];
  i, N, sh, ball, nmax, max, max2, nmax2: integer;
begin
  max := -1;
  max2 := -1;
  nmax := 0;
  Smax := '';
  Smax2 := '';
  readln (N);
  for i := 1 to N do
    begin
      s := '';
      repeat 
        read (c);
        s := s + c;
      until c = ' ';
      repeat 
        read (c);
        s := s + c;
      until c = ' ';
      read (sh, ball);
      if sh = 50 then
        if ball > max then
            begin
              max2 := max;
              max := ball;
              Smax2 := Smax;
              Smax := s;
              nmax2 := nmax;
              nmax := 1;
            end
        else
          if ball = max then
            begin
              nmax := nmax +1;
              max2 := max;
              Smax2 := s;
            end
          else
            if ball > max2 then
            begin
              max2 := ball;
              Smax := S;
              nmax2 := 1;
            end
            else
              if ball = max2 then
              nmax := nmax + 1;
    end;
  if (nmax = 2) or ((nmax = 1) and (nmax2 = 1)) then
    begin
      writeln (Smax); 
      writeln (Smax2);
    end
  else
    if (nmax = 1) and (nmax2>1) then
      writeln (Smax)
    else
      writeln (nmax);
end.
    
    
            
              
              
       
 
        
      
