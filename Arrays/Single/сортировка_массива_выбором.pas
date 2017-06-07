const
  N = 10;
var
  A: array [1..N] of integer;
  J,I, Jmin, min, max, C: integer;
begin
  for j := 1 to n do
    A[j] := random(100);
  writeln (a);
  for i := 1 to N-1 do
    begin
      min := a[i];
      jmin := i;
      for j := i + 1 to N do
        begin
          if a[j] < min then
            begin
              min := a[j];
              jmin := j;
            end;
        end;
      C := a[i];
      a[i] := min;
      a[jmin] := c;
    end;
  writeln (a);
end.
