var
  a, b: string;
  i: integer;

begin
  writeln('Введите строку:');
  readln(a);

 b := '';
  for i := 1 to length(a) do
  begin
    if (a[i] = ' ') then
      b := b + Chr(183)
    else
      b := b + a[i];
  end;

  b := b + Chr(182);

  writeln('Результат:');
  writeln(b);
end.