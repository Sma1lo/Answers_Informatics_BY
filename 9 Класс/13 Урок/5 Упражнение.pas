var
  a, b: string;
  i: integer;

begin
  writeln('Введите строку:');
  readln(a);

  b := '';
  for i := 1 to length(a) do
  begin
    if (i = 1) or ((i > 1) and (a[i - 1] = '.')) then
    begin
      b := b + UpCase(a[i]);
    end
    else
    begin
      b := b + a[i];
    end;

    if (a[i] = '.') then
    begin
      b := b + ' ';
    end;
  end;

  writeln('Результат:');
  writeln(b);
end.