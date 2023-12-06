var
  a: string;
  i: integer;
  ch: char;
begin
  writeln('Введите строку:');
  readln(a);

  writeln('Кодировка символов введенной строки: ');
  for i := 1 to length(a) do
  begin
    ch := a[i];
    write(ord(ch), ' ');
  end;
end.