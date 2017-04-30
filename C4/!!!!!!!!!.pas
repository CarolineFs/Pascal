program roma;
const
    M = 100;
var
    score: array [1..M] of integer;
    i, k, x, N, av, j: integer;
    c: char;
begin
    writeln ('Number: ');
    readln (N);
    k := 0;
    
    for i:=1 to N do
        score[i] := 0;
    for i:=1 to N do
        begin
            while k <> 3 do
                begin
                    read(c);
                    if c = ' ' then k += 1;
                end;
            k := 0;
            readln(x);
            score[x] := score[x] + 1;
        end;
    
    av := Trunc(N*0.2);
    for i:= 100 downto 1 do
      if (score[i] >= av) and (score[i]<>0)then 
        begin 
          writeln (i);
          break; 
        end
      else
        begin
            k := 0;
            for j:=100 downto 1 do
              begin
                if (k+score[j]<=av) then
                    k := k + score[j]
                  else
                    begin
                      writeln(i);
                      break; 
                  end;
              end; break;    
        end;        
    end.
