var
  n, f: string;
  i, j, l: integer;

begin
  writeln('Введите число: ');
  readln(n);
  
  l := length(n);
  j := 0;
  f := '';

  for i := l downto 1 do
  begin
    f := n[i] + f;
    Inc(j);
    if (j = 3) and (i > 1) then
    begin
      f := ' ' + f;
      j := 0;
    end;
  end;

  writeln('Результат: ', f);
end.
