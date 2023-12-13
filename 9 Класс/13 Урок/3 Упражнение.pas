var
  a, b: string;
  i: integer;

begin
  writeln('Введите строку: ');
  readln(a);

  b := '';
  i := 1;
  while i <= length(a) do
  begin
    if (a[i] = ' ') and ((i = 1) or (i = length(a)) or (a[i + 1] = ' ') or (a[i + 1] in ['.', ',', '!', '?', ';', ':'])) then
    begin
      i := i + 1;
    end
    else
    begin
      b := b + a[i];
      i := i + 1;
    end;
  end;
  
  writeln('Результат: ', b);
end.