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
    i := 100;
    while i <> 0 do 
      if score[i] >= av then 
        begin 
          writeln (i);
          break; 
        end
      else
        begin
            k := 0;
            for j := 100 to 1 do
              begin
                k := k + score[j];
                if k >= av then
                  begin
                    writeln(i);
                    break;
                  end;
              end;
         i := i -1;
        end;     
                
    end.
